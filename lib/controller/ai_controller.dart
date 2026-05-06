import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:practice/data/models/chat_model.dart';
import 'package:practice/data/repository/ai_repo.dart';

final aiControllerProvider = ChangeNotifierProvider<AiController>(
      (ref) => AiController(ref),
);

class AiController extends ChangeNotifier {
  AiController(this.ref);
  final Ref ref;

  final List<ChatModel> _messages = [];
  List<ChatModel> get messages => List.unmodifiable(_messages);

  bool _isStreaming = false;
  bool get isStreaming => _isStreaming;

  bool _aiChatIsLoading = false;
  bool get aiChatIsLoading => _aiChatIsLoading;

  String _streamingText = '';
  String get streamingText => _streamingText;

  Future<void> sendMessage({required String message}) async {
    if (message.trim().isEmpty) return;

    _messages.add(ChatModel(role: 'user', text: message));
    _messages.add(ChatModel(role: 'ai', text: ''));
    notifyListeners();

    try {
      _aiChatIsLoading = true;
      _streamingText = '';
      _isStreaming = true;
      notifyListeners();

      final stream = ref.read(aiRepoProvider).aiResponseStream(message: message);

      await for (final chunk in stream) {
        _streamingText += chunk;
        notifyListeners();
      }

      _messages.last = ChatModel(role: 'ai', text: _streamingText);

    } catch (e) {
      _messages.last = ChatModel(role: 'ai', text: 'Something went wrong. Try again.');
    } finally {
      _aiChatIsLoading = false;
      _isStreaming = false;
      notifyListeners();
    }
  }
}