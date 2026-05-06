import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final aiRepoProvider = Provider<AiRepo>(
      (ref) => AiRepo(ref),
);

class AiRepo {
  AiRepo(this.ref);
  final Ref ref;

  Stream<String> aiResponseStream({required String message}) async* {
    final apiKey = dotenv.env['GEMINI_API_KEY'] ?? '';
    final aiApi = dotenv.env['GEMINI_API_URL'] ?? '';

    if (apiKey.isEmpty) {
      yield "API key is missing. Please check your .env file.";
      return;
    }

    final dio = Dio();

    try {
      final response = await dio.post(
        aiApi,
        queryParameters: {
          "key": apiKey,
          "alt": "sse",
        },
        data: {
          "contents": [
            {
              "parts": [
                {"text": message}
              ]
            }
          ]
        },
        options: Options(
          responseType: ResponseType.stream,
          headers: {"Content-Type": "application/json"},
          validateStatus: (_) => true,
        ),
      );

      if (response.statusCode == 429) {
        yield "Too many requests. Please wait a moment and try again.";
        return;
      }
      if (response.statusCode == 401 || response.statusCode == 403) {
        yield "Invalid or unauthorized API key. Please check your credentials.";
        return;
      }
      if (response.statusCode == null ||
          response.statusCode! < 200 ||
          response.statusCode! >= 300) {
        yield "API error occurred. Status code: ${response.statusCode}";
        return;
      }

      final stream = response.data.stream as Stream<List<int>>;
      String buffer = '';

      await for (final chunk in stream) {
        buffer += utf8.decode(chunk, allowMalformed: true);
        final lines = buffer.split('\n');
        buffer = lines.last;

        for (final line in lines) {
          if (!line.startsWith('data: ')) continue;
          final jsonStr = line.substring(6).trim();
          if (jsonStr.isEmpty || jsonStr == '[DONE]') continue;

          try {
            final decoded = jsonDecode(jsonStr);
            final text =
            decoded['candidates']?[0]?['content']?['parts']?[0]?['text'];
            if (text != null && text.toString().isNotEmpty) {
              yield text.toString();
            }
          } catch (_) {}
        }
      }
    } on DioException catch (e) {
      yield "Network error: ${e.response?.statusCode ?? e.message ?? 'Unknown network error'}";
    } catch (e) {
      yield "An unexpected error occurred. Please try again.";
    }
  }
}