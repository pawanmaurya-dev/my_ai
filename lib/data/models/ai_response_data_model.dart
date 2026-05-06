import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'ai_response_data_model.freezed.dart';
part 'ai_response_data_model.g.dart';

@freezed
class AiResponseDataModel with _$AiResponseDataModel {
  const factory AiResponseDataModel({
    @JsonKey(name: "candidates")
    required List<Candidate> candidates,
    @JsonKey(name: "usageMetadata")
    required UsageMetadata usageMetadata,
    @JsonKey(name: "modelVersion")
    required String modelVersion,
    @JsonKey(name: "responseId")
    required String responseId,
  }) = _AiResponseDataModel;

  factory AiResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$AiResponseDataModelFromJson(json);
}

@freezed
class Candidate with _$Candidate {
  const factory Candidate({
    @JsonKey(name: "content")
    required Content content,
    @JsonKey(name: "finishReason")
    required String finishReason,
    @Default(0)
    @JsonKey(name: "index")
    int index,
  }) = _Candidate;

  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({
    @JsonKey(name: "parts")
    required List<Part> parts,
    @JsonKey(name: "role")
    required String role,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
class Part with _$Part {
  const factory Part({
    @JsonKey(name: "text")
    required String text,
    @Default('')
    @JsonKey(name: "thoughtSignature")
    String thoughtSignature,
  }) = _Part;

  factory Part.fromJson(Map<String, dynamic> json) => _$PartFromJson(json);
}

@freezed
class UsageMetadata with _$UsageMetadata {
  const factory UsageMetadata({
    @JsonKey(name: "promptTokenCount")
    required int promptTokenCount,
    @JsonKey(name: "candidatesTokenCount")
    required int candidatesTokenCount,
    @JsonKey(name: "totalTokenCount")
    required int totalTokenCount,
    @Default([])
    @JsonKey(name: "promptTokensDetails")
    List<PromptTokensDetail> promptTokensDetails,
    @Default(0)
    @JsonKey(name: "thoughtsTokenCount")
    int thoughtsTokenCount,
  }) = _UsageMetadata;

  factory UsageMetadata.fromJson(Map<String, dynamic> json) =>
      _$UsageMetadataFromJson(json);
}

@freezed
class PromptTokensDetail with _$PromptTokensDetail {
  const factory PromptTokensDetail({
    @JsonKey(name: "modality")
    required String modality,
    @JsonKey(name: "tokenCount")
    required int tokenCount,
  }) = _PromptTokensDetail;

  factory PromptTokensDetail.fromJson(Map<String, dynamic> json) =>
      _$PromptTokensDetailFromJson(json);
}