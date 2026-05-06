// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiResponseDataModelImpl _$$AiResponseDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AiResponseDataModelImpl(
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => Candidate.fromJson(e as Map<String, dynamic>))
          .toList(),
      usageMetadata:
          UsageMetadata.fromJson(json['usageMetadata'] as Map<String, dynamic>),
      modelVersion: json['modelVersion'] as String,
      responseId: json['responseId'] as String,
    );

Map<String, dynamic> _$$AiResponseDataModelImplToJson(
        _$AiResponseDataModelImpl instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
      'usageMetadata': instance.usageMetadata,
      'modelVersion': instance.modelVersion,
      'responseId': instance.responseId,
    };

_$CandidateImpl _$$CandidateImplFromJson(Map<String, dynamic> json) =>
    _$CandidateImpl(
      content: Content.fromJson(json['content'] as Map<String, dynamic>),
      finishReason: json['finishReason'] as String,
      index: (json['index'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CandidateImplToJson(_$CandidateImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'finishReason': instance.finishReason,
      'index': instance.index,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(
      parts: (json['parts'] as List<dynamic>)
          .map((e) => Part.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: json['role'] as String,
    );

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{
      'parts': instance.parts,
      'role': instance.role,
    };

_$PartImpl _$$PartImplFromJson(Map<String, dynamic> json) => _$PartImpl(
      text: json['text'] as String,
      thoughtSignature: json['thoughtSignature'] as String? ?? '',
    );

Map<String, dynamic> _$$PartImplToJson(_$PartImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'thoughtSignature': instance.thoughtSignature,
    };

_$UsageMetadataImpl _$$UsageMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UsageMetadataImpl(
      promptTokenCount: (json['promptTokenCount'] as num).toInt(),
      candidatesTokenCount: (json['candidatesTokenCount'] as num).toInt(),
      totalTokenCount: (json['totalTokenCount'] as num).toInt(),
      promptTokensDetails: (json['promptTokensDetails'] as List<dynamic>?)
              ?.map(
                  (e) => PromptTokensDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      thoughtsTokenCount: (json['thoughtsTokenCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$UsageMetadataImplToJson(_$UsageMetadataImpl instance) =>
    <String, dynamic>{
      'promptTokenCount': instance.promptTokenCount,
      'candidatesTokenCount': instance.candidatesTokenCount,
      'totalTokenCount': instance.totalTokenCount,
      'promptTokensDetails': instance.promptTokensDetails,
      'thoughtsTokenCount': instance.thoughtsTokenCount,
    };

_$PromptTokensDetailImpl _$$PromptTokensDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$PromptTokensDetailImpl(
      modality: json['modality'] as String,
      tokenCount: (json['tokenCount'] as num).toInt(),
    );

Map<String, dynamic> _$$PromptTokensDetailImplToJson(
        _$PromptTokensDetailImpl instance) =>
    <String, dynamic>{
      'modality': instance.modality,
      'tokenCount': instance.tokenCount,
    };
