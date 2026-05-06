import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';

@freezed
class ChatModel with _$ChatModel {
  const ChatModel._();

  const factory ChatModel({
    required String role,
    required String text,
  }) = _ChatModel;

  bool get isUser => role == 'user';
}