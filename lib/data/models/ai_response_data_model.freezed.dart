// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiResponseDataModel _$AiResponseDataModelFromJson(Map<String, dynamic> json) {
  return _AiResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$AiResponseDataModel {
  @JsonKey(name: "candidates")
  List<Candidate> get candidates => throw _privateConstructorUsedError;
  @JsonKey(name: "usageMetadata")
  UsageMetadata get usageMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: "modelVersion")
  String get modelVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "responseId")
  String get responseId => throw _privateConstructorUsedError;

  /// Serializes this AiResponseDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AiResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiResponseDataModelCopyWith<AiResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiResponseDataModelCopyWith<$Res> {
  factory $AiResponseDataModelCopyWith(
          AiResponseDataModel value, $Res Function(AiResponseDataModel) then) =
      _$AiResponseDataModelCopyWithImpl<$Res, AiResponseDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "candidates") List<Candidate> candidates,
      @JsonKey(name: "usageMetadata") UsageMetadata usageMetadata,
      @JsonKey(name: "modelVersion") String modelVersion,
      @JsonKey(name: "responseId") String responseId});

  $UsageMetadataCopyWith<$Res> get usageMetadata;
}

/// @nodoc
class _$AiResponseDataModelCopyWithImpl<$Res, $Val extends AiResponseDataModel>
    implements $AiResponseDataModelCopyWith<$Res> {
  _$AiResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = null,
    Object? usageMetadata = null,
    Object? modelVersion = null,
    Object? responseId = null,
  }) {
    return _then(_value.copyWith(
      candidates: null == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
      usageMetadata: null == usageMetadata
          ? _value.usageMetadata
          : usageMetadata // ignore: cast_nullable_to_non_nullable
              as UsageMetadata,
      modelVersion: null == modelVersion
          ? _value.modelVersion
          : modelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      responseId: null == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of AiResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageMetadataCopyWith<$Res> get usageMetadata {
    return $UsageMetadataCopyWith<$Res>(_value.usageMetadata, (value) {
      return _then(_value.copyWith(usageMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AiResponseDataModelImplCopyWith<$Res>
    implements $AiResponseDataModelCopyWith<$Res> {
  factory _$$AiResponseDataModelImplCopyWith(_$AiResponseDataModelImpl value,
          $Res Function(_$AiResponseDataModelImpl) then) =
      __$$AiResponseDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "candidates") List<Candidate> candidates,
      @JsonKey(name: "usageMetadata") UsageMetadata usageMetadata,
      @JsonKey(name: "modelVersion") String modelVersion,
      @JsonKey(name: "responseId") String responseId});

  @override
  $UsageMetadataCopyWith<$Res> get usageMetadata;
}

/// @nodoc
class __$$AiResponseDataModelImplCopyWithImpl<$Res>
    extends _$AiResponseDataModelCopyWithImpl<$Res, _$AiResponseDataModelImpl>
    implements _$$AiResponseDataModelImplCopyWith<$Res> {
  __$$AiResponseDataModelImplCopyWithImpl(_$AiResponseDataModelImpl _value,
      $Res Function(_$AiResponseDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AiResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = null,
    Object? usageMetadata = null,
    Object? modelVersion = null,
    Object? responseId = null,
  }) {
    return _then(_$AiResponseDataModelImpl(
      candidates: null == candidates
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<Candidate>,
      usageMetadata: null == usageMetadata
          ? _value.usageMetadata
          : usageMetadata // ignore: cast_nullable_to_non_nullable
              as UsageMetadata,
      modelVersion: null == modelVersion
          ? _value.modelVersion
          : modelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      responseId: null == responseId
          ? _value.responseId
          : responseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiResponseDataModelImpl implements _AiResponseDataModel {
  const _$AiResponseDataModelImpl(
      {@JsonKey(name: "candidates") required final List<Candidate> candidates,
      @JsonKey(name: "usageMetadata") required this.usageMetadata,
      @JsonKey(name: "modelVersion") required this.modelVersion,
      @JsonKey(name: "responseId") required this.responseId})
      : _candidates = candidates;

  factory _$AiResponseDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiResponseDataModelImplFromJson(json);

  final List<Candidate> _candidates;
  @override
  @JsonKey(name: "candidates")
  List<Candidate> get candidates {
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidates);
  }

  @override
  @JsonKey(name: "usageMetadata")
  final UsageMetadata usageMetadata;
  @override
  @JsonKey(name: "modelVersion")
  final String modelVersion;
  @override
  @JsonKey(name: "responseId")
  final String responseId;

  @override
  String toString() {
    return 'AiResponseDataModel(candidates: $candidates, usageMetadata: $usageMetadata, modelVersion: $modelVersion, responseId: $responseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiResponseDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates) &&
            (identical(other.usageMetadata, usageMetadata) ||
                other.usageMetadata == usageMetadata) &&
            (identical(other.modelVersion, modelVersion) ||
                other.modelVersion == modelVersion) &&
            (identical(other.responseId, responseId) ||
                other.responseId == responseId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_candidates),
      usageMetadata,
      modelVersion,
      responseId);

  /// Create a copy of AiResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiResponseDataModelImplCopyWith<_$AiResponseDataModelImpl> get copyWith =>
      __$$AiResponseDataModelImplCopyWithImpl<_$AiResponseDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiResponseDataModelImplToJson(
      this,
    );
  }
}

abstract class _AiResponseDataModel implements AiResponseDataModel {
  const factory _AiResponseDataModel(
      {@JsonKey(name: "candidates") required final List<Candidate> candidates,
      @JsonKey(name: "usageMetadata")
      required final UsageMetadata usageMetadata,
      @JsonKey(name: "modelVersion") required final String modelVersion,
      @JsonKey(name: "responseId")
      required final String responseId}) = _$AiResponseDataModelImpl;

  factory _AiResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$AiResponseDataModelImpl.fromJson;

  @override
  @JsonKey(name: "candidates")
  List<Candidate> get candidates;
  @override
  @JsonKey(name: "usageMetadata")
  UsageMetadata get usageMetadata;
  @override
  @JsonKey(name: "modelVersion")
  String get modelVersion;
  @override
  @JsonKey(name: "responseId")
  String get responseId;

  /// Create a copy of AiResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiResponseDataModelImplCopyWith<_$AiResponseDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Candidate _$CandidateFromJson(Map<String, dynamic> json) {
  return _Candidate.fromJson(json);
}

/// @nodoc
mixin _$Candidate {
  @JsonKey(name: "content")
  Content get content => throw _privateConstructorUsedError;
  @JsonKey(name: "finishReason")
  String get finishReason => throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  int get index => throw _privateConstructorUsedError;

  /// Serializes this Candidate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CandidateCopyWith<Candidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CandidateCopyWith<$Res> {
  factory $CandidateCopyWith(Candidate value, $Res Function(Candidate) then) =
      _$CandidateCopyWithImpl<$Res, Candidate>;
  @useResult
  $Res call(
      {@JsonKey(name: "content") Content content,
      @JsonKey(name: "finishReason") String finishReason,
      @JsonKey(name: "index") int index});

  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class _$CandidateCopyWithImpl<$Res, $Val extends Candidate>
    implements $CandidateCopyWith<$Res> {
  _$CandidateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? finishReason = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res> get content {
    return $ContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CandidateImplCopyWith<$Res>
    implements $CandidateCopyWith<$Res> {
  factory _$$CandidateImplCopyWith(
          _$CandidateImpl value, $Res Function(_$CandidateImpl) then) =
      __$$CandidateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "content") Content content,
      @JsonKey(name: "finishReason") String finishReason,
      @JsonKey(name: "index") int index});

  @override
  $ContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$CandidateImplCopyWithImpl<$Res>
    extends _$CandidateCopyWithImpl<$Res, _$CandidateImpl>
    implements _$$CandidateImplCopyWith<$Res> {
  __$$CandidateImplCopyWithImpl(
      _$CandidateImpl _value, $Res Function(_$CandidateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? finishReason = null,
    Object? index = null,
  }) {
    return _then(_$CandidateImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content,
      finishReason: null == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CandidateImpl implements _Candidate {
  const _$CandidateImpl(
      {@JsonKey(name: "content") required this.content,
      @JsonKey(name: "finishReason") required this.finishReason,
      @JsonKey(name: "index") this.index = 0});

  factory _$CandidateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CandidateImplFromJson(json);

  @override
  @JsonKey(name: "content")
  final Content content;
  @override
  @JsonKey(name: "finishReason")
  final String finishReason;
  @override
  @JsonKey(name: "index")
  final int index;

  @override
  String toString() {
    return 'Candidate(content: $content, finishReason: $finishReason, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CandidateImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, finishReason, index);

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CandidateImplCopyWith<_$CandidateImpl> get copyWith =>
      __$$CandidateImplCopyWithImpl<_$CandidateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CandidateImplToJson(
      this,
    );
  }
}

abstract class _Candidate implements Candidate {
  const factory _Candidate(
      {@JsonKey(name: "content") required final Content content,
      @JsonKey(name: "finishReason") required final String finishReason,
      @JsonKey(name: "index") final int index}) = _$CandidateImpl;

  factory _Candidate.fromJson(Map<String, dynamic> json) =
      _$CandidateImpl.fromJson;

  @override
  @JsonKey(name: "content")
  Content get content;
  @override
  @JsonKey(name: "finishReason")
  String get finishReason;
  @override
  @JsonKey(name: "index")
  int get index;

  /// Create a copy of Candidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CandidateImplCopyWith<_$CandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  @JsonKey(name: "parts")
  List<Part> get parts => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String get role => throw _privateConstructorUsedError;

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call(
      {@JsonKey(name: "parts") List<Part> parts,
      @JsonKey(name: "role") String role});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      parts: null == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<Part>,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
          _$ContentImpl value, $Res Function(_$ContentImpl) then) =
      __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "parts") List<Part> parts,
      @JsonKey(name: "role") String role});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
      _$ContentImpl _value, $Res Function(_$ContentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
    Object? role = null,
  }) {
    return _then(_$ContentImpl(
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<Part>,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl implements _Content {
  const _$ContentImpl(
      {@JsonKey(name: "parts") required final List<Part> parts,
      @JsonKey(name: "role") required this.role})
      : _parts = parts;

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  final List<Part> _parts;
  @override
  @JsonKey(name: "parts")
  List<Part> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  @JsonKey(name: "role")
  final String role;

  @override
  String toString() {
    return 'Content(parts: $parts, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_parts), role);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(
      this,
    );
  }
}

abstract class _Content implements Content {
  const factory _Content(
      {@JsonKey(name: "parts") required final List<Part> parts,
      @JsonKey(name: "role") required final String role}) = _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  @JsonKey(name: "parts")
  List<Part> get parts;
  @override
  @JsonKey(name: "role")
  String get role;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Part _$PartFromJson(Map<String, dynamic> json) {
  return _Part.fromJson(json);
}

/// @nodoc
mixin _$Part {
  @JsonKey(name: "text")
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "thoughtSignature")
  String get thoughtSignature => throw _privateConstructorUsedError;

  /// Serializes this Part to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartCopyWith<Part> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartCopyWith<$Res> {
  factory $PartCopyWith(Part value, $Res Function(Part) then) =
      _$PartCopyWithImpl<$Res, Part>;
  @useResult
  $Res call(
      {@JsonKey(name: "text") String text,
      @JsonKey(name: "thoughtSignature") String thoughtSignature});
}

/// @nodoc
class _$PartCopyWithImpl<$Res, $Val extends Part>
    implements $PartCopyWith<$Res> {
  _$PartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? thoughtSignature = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      thoughtSignature: null == thoughtSignature
          ? _value.thoughtSignature
          : thoughtSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartImplCopyWith<$Res> implements $PartCopyWith<$Res> {
  factory _$$PartImplCopyWith(
          _$PartImpl value, $Res Function(_$PartImpl) then) =
      __$$PartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "text") String text,
      @JsonKey(name: "thoughtSignature") String thoughtSignature});
}

/// @nodoc
class __$$PartImplCopyWithImpl<$Res>
    extends _$PartCopyWithImpl<$Res, _$PartImpl>
    implements _$$PartImplCopyWith<$Res> {
  __$$PartImplCopyWithImpl(_$PartImpl _value, $Res Function(_$PartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? thoughtSignature = null,
  }) {
    return _then(_$PartImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      thoughtSignature: null == thoughtSignature
          ? _value.thoughtSignature
          : thoughtSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartImpl implements _Part {
  const _$PartImpl(
      {@JsonKey(name: "text") required this.text,
      @JsonKey(name: "thoughtSignature") this.thoughtSignature = ''});

  factory _$PartImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartImplFromJson(json);

  @override
  @JsonKey(name: "text")
  final String text;
  @override
  @JsonKey(name: "thoughtSignature")
  final String thoughtSignature;

  @override
  String toString() {
    return 'Part(text: $text, thoughtSignature: $thoughtSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.thoughtSignature, thoughtSignature) ||
                other.thoughtSignature == thoughtSignature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, thoughtSignature);

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartImplCopyWith<_$PartImpl> get copyWith =>
      __$$PartImplCopyWithImpl<_$PartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartImplToJson(
      this,
    );
  }
}

abstract class _Part implements Part {
  const factory _Part(
          {@JsonKey(name: "text") required final String text,
          @JsonKey(name: "thoughtSignature") final String thoughtSignature}) =
      _$PartImpl;

  factory _Part.fromJson(Map<String, dynamic> json) = _$PartImpl.fromJson;

  @override
  @JsonKey(name: "text")
  String get text;
  @override
  @JsonKey(name: "thoughtSignature")
  String get thoughtSignature;

  /// Create a copy of Part
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartImplCopyWith<_$PartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UsageMetadata _$UsageMetadataFromJson(Map<String, dynamic> json) {
  return _UsageMetadata.fromJson(json);
}

/// @nodoc
mixin _$UsageMetadata {
  @JsonKey(name: "promptTokenCount")
  int get promptTokenCount => throw _privateConstructorUsedError;
  @JsonKey(name: "candidatesTokenCount")
  int get candidatesTokenCount => throw _privateConstructorUsedError;
  @JsonKey(name: "totalTokenCount")
  int get totalTokenCount => throw _privateConstructorUsedError;
  @JsonKey(name: "promptTokensDetails")
  List<PromptTokensDetail> get promptTokensDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "thoughtsTokenCount")
  int get thoughtsTokenCount => throw _privateConstructorUsedError;

  /// Serializes this UsageMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsageMetadataCopyWith<UsageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageMetadataCopyWith<$Res> {
  factory $UsageMetadataCopyWith(
          UsageMetadata value, $Res Function(UsageMetadata) then) =
      _$UsageMetadataCopyWithImpl<$Res, UsageMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: "promptTokenCount") int promptTokenCount,
      @JsonKey(name: "candidatesTokenCount") int candidatesTokenCount,
      @JsonKey(name: "totalTokenCount") int totalTokenCount,
      @JsonKey(name: "promptTokensDetails")
      List<PromptTokensDetail> promptTokensDetails,
      @JsonKey(name: "thoughtsTokenCount") int thoughtsTokenCount});
}

/// @nodoc
class _$UsageMetadataCopyWithImpl<$Res, $Val extends UsageMetadata>
    implements $UsageMetadataCopyWith<$Res> {
  _$UsageMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokenCount = null,
    Object? candidatesTokenCount = null,
    Object? totalTokenCount = null,
    Object? promptTokensDetails = null,
    Object? thoughtsTokenCount = null,
  }) {
    return _then(_value.copyWith(
      promptTokenCount: null == promptTokenCount
          ? _value.promptTokenCount
          : promptTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      candidatesTokenCount: null == candidatesTokenCount
          ? _value.candidatesTokenCount
          : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokenCount: null == totalTokenCount
          ? _value.totalTokenCount
          : totalTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokensDetails: null == promptTokensDetails
          ? _value.promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<PromptTokensDetail>,
      thoughtsTokenCount: null == thoughtsTokenCount
          ? _value.thoughtsTokenCount
          : thoughtsTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageMetadataImplCopyWith<$Res>
    implements $UsageMetadataCopyWith<$Res> {
  factory _$$UsageMetadataImplCopyWith(
          _$UsageMetadataImpl value, $Res Function(_$UsageMetadataImpl) then) =
      __$$UsageMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "promptTokenCount") int promptTokenCount,
      @JsonKey(name: "candidatesTokenCount") int candidatesTokenCount,
      @JsonKey(name: "totalTokenCount") int totalTokenCount,
      @JsonKey(name: "promptTokensDetails")
      List<PromptTokensDetail> promptTokensDetails,
      @JsonKey(name: "thoughtsTokenCount") int thoughtsTokenCount});
}

/// @nodoc
class __$$UsageMetadataImplCopyWithImpl<$Res>
    extends _$UsageMetadataCopyWithImpl<$Res, _$UsageMetadataImpl>
    implements _$$UsageMetadataImplCopyWith<$Res> {
  __$$UsageMetadataImplCopyWithImpl(
      _$UsageMetadataImpl _value, $Res Function(_$UsageMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokenCount = null,
    Object? candidatesTokenCount = null,
    Object? totalTokenCount = null,
    Object? promptTokensDetails = null,
    Object? thoughtsTokenCount = null,
  }) {
    return _then(_$UsageMetadataImpl(
      promptTokenCount: null == promptTokenCount
          ? _value.promptTokenCount
          : promptTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      candidatesTokenCount: null == candidatesTokenCount
          ? _value.candidatesTokenCount
          : candidatesTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTokenCount: null == totalTokenCount
          ? _value.totalTokenCount
          : totalTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
      promptTokensDetails: null == promptTokensDetails
          ? _value._promptTokensDetails
          : promptTokensDetails // ignore: cast_nullable_to_non_nullable
              as List<PromptTokensDetail>,
      thoughtsTokenCount: null == thoughtsTokenCount
          ? _value.thoughtsTokenCount
          : thoughtsTokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageMetadataImpl implements _UsageMetadata {
  const _$UsageMetadataImpl(
      {@JsonKey(name: "promptTokenCount") required this.promptTokenCount,
      @JsonKey(name: "candidatesTokenCount") required this.candidatesTokenCount,
      @JsonKey(name: "totalTokenCount") required this.totalTokenCount,
      @JsonKey(name: "promptTokensDetails")
      final List<PromptTokensDetail> promptTokensDetails = const [],
      @JsonKey(name: "thoughtsTokenCount") this.thoughtsTokenCount = 0})
      : _promptTokensDetails = promptTokensDetails;

  factory _$UsageMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageMetadataImplFromJson(json);

  @override
  @JsonKey(name: "promptTokenCount")
  final int promptTokenCount;
  @override
  @JsonKey(name: "candidatesTokenCount")
  final int candidatesTokenCount;
  @override
  @JsonKey(name: "totalTokenCount")
  final int totalTokenCount;
  final List<PromptTokensDetail> _promptTokensDetails;
  @override
  @JsonKey(name: "promptTokensDetails")
  List<PromptTokensDetail> get promptTokensDetails {
    if (_promptTokensDetails is EqualUnmodifiableListView)
      return _promptTokensDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promptTokensDetails);
  }

  @override
  @JsonKey(name: "thoughtsTokenCount")
  final int thoughtsTokenCount;

  @override
  String toString() {
    return 'UsageMetadata(promptTokenCount: $promptTokenCount, candidatesTokenCount: $candidatesTokenCount, totalTokenCount: $totalTokenCount, promptTokensDetails: $promptTokensDetails, thoughtsTokenCount: $thoughtsTokenCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageMetadataImpl &&
            (identical(other.promptTokenCount, promptTokenCount) ||
                other.promptTokenCount == promptTokenCount) &&
            (identical(other.candidatesTokenCount, candidatesTokenCount) ||
                other.candidatesTokenCount == candidatesTokenCount) &&
            (identical(other.totalTokenCount, totalTokenCount) ||
                other.totalTokenCount == totalTokenCount) &&
            const DeepCollectionEquality()
                .equals(other._promptTokensDetails, _promptTokensDetails) &&
            (identical(other.thoughtsTokenCount, thoughtsTokenCount) ||
                other.thoughtsTokenCount == thoughtsTokenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      promptTokenCount,
      candidatesTokenCount,
      totalTokenCount,
      const DeepCollectionEquality().hash(_promptTokensDetails),
      thoughtsTokenCount);

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageMetadataImplCopyWith<_$UsageMetadataImpl> get copyWith =>
      __$$UsageMetadataImplCopyWithImpl<_$UsageMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageMetadataImplToJson(
      this,
    );
  }
}

abstract class _UsageMetadata implements UsageMetadata {
  const factory _UsageMetadata(
      {@JsonKey(name: "promptTokenCount") required final int promptTokenCount,
      @JsonKey(name: "candidatesTokenCount")
      required final int candidatesTokenCount,
      @JsonKey(name: "totalTokenCount") required final int totalTokenCount,
      @JsonKey(name: "promptTokensDetails")
      final List<PromptTokensDetail> promptTokensDetails,
      @JsonKey(name: "thoughtsTokenCount")
      final int thoughtsTokenCount}) = _$UsageMetadataImpl;

  factory _UsageMetadata.fromJson(Map<String, dynamic> json) =
      _$UsageMetadataImpl.fromJson;

  @override
  @JsonKey(name: "promptTokenCount")
  int get promptTokenCount;
  @override
  @JsonKey(name: "candidatesTokenCount")
  int get candidatesTokenCount;
  @override
  @JsonKey(name: "totalTokenCount")
  int get totalTokenCount;
  @override
  @JsonKey(name: "promptTokensDetails")
  List<PromptTokensDetail> get promptTokensDetails;
  @override
  @JsonKey(name: "thoughtsTokenCount")
  int get thoughtsTokenCount;

  /// Create a copy of UsageMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsageMetadataImplCopyWith<_$UsageMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromptTokensDetail _$PromptTokensDetailFromJson(Map<String, dynamic> json) {
  return _PromptTokensDetail.fromJson(json);
}

/// @nodoc
mixin _$PromptTokensDetail {
  @JsonKey(name: "modality")
  String get modality => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenCount")
  int get tokenCount => throw _privateConstructorUsedError;

  /// Serializes this PromptTokensDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromptTokensDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromptTokensDetailCopyWith<PromptTokensDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptTokensDetailCopyWith<$Res> {
  factory $PromptTokensDetailCopyWith(
          PromptTokensDetail value, $Res Function(PromptTokensDetail) then) =
      _$PromptTokensDetailCopyWithImpl<$Res, PromptTokensDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "modality") String modality,
      @JsonKey(name: "tokenCount") int tokenCount});
}

/// @nodoc
class _$PromptTokensDetailCopyWithImpl<$Res, $Val extends PromptTokensDetail>
    implements $PromptTokensDetailCopyWith<$Res> {
  _$PromptTokensDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromptTokensDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modality = null,
    Object? tokenCount = null,
  }) {
    return _then(_value.copyWith(
      modality: null == modality
          ? _value.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as String,
      tokenCount: null == tokenCount
          ? _value.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptTokensDetailImplCopyWith<$Res>
    implements $PromptTokensDetailCopyWith<$Res> {
  factory _$$PromptTokensDetailImplCopyWith(_$PromptTokensDetailImpl value,
          $Res Function(_$PromptTokensDetailImpl) then) =
      __$$PromptTokensDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "modality") String modality,
      @JsonKey(name: "tokenCount") int tokenCount});
}

/// @nodoc
class __$$PromptTokensDetailImplCopyWithImpl<$Res>
    extends _$PromptTokensDetailCopyWithImpl<$Res, _$PromptTokensDetailImpl>
    implements _$$PromptTokensDetailImplCopyWith<$Res> {
  __$$PromptTokensDetailImplCopyWithImpl(_$PromptTokensDetailImpl _value,
      $Res Function(_$PromptTokensDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromptTokensDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modality = null,
    Object? tokenCount = null,
  }) {
    return _then(_$PromptTokensDetailImpl(
      modality: null == modality
          ? _value.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as String,
      tokenCount: null == tokenCount
          ? _value.tokenCount
          : tokenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptTokensDetailImpl implements _PromptTokensDetail {
  const _$PromptTokensDetailImpl(
      {@JsonKey(name: "modality") required this.modality,
      @JsonKey(name: "tokenCount") required this.tokenCount});

  factory _$PromptTokensDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptTokensDetailImplFromJson(json);

  @override
  @JsonKey(name: "modality")
  final String modality;
  @override
  @JsonKey(name: "tokenCount")
  final int tokenCount;

  @override
  String toString() {
    return 'PromptTokensDetail(modality: $modality, tokenCount: $tokenCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptTokensDetailImpl &&
            (identical(other.modality, modality) ||
                other.modality == modality) &&
            (identical(other.tokenCount, tokenCount) ||
                other.tokenCount == tokenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, modality, tokenCount);

  /// Create a copy of PromptTokensDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptTokensDetailImplCopyWith<_$PromptTokensDetailImpl> get copyWith =>
      __$$PromptTokensDetailImplCopyWithImpl<_$PromptTokensDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptTokensDetailImplToJson(
      this,
    );
  }
}

abstract class _PromptTokensDetail implements PromptTokensDetail {
  const factory _PromptTokensDetail(
          {@JsonKey(name: "modality") required final String modality,
          @JsonKey(name: "tokenCount") required final int tokenCount}) =
      _$PromptTokensDetailImpl;

  factory _PromptTokensDetail.fromJson(Map<String, dynamic> json) =
      _$PromptTokensDetailImpl.fromJson;

  @override
  @JsonKey(name: "modality")
  String get modality;
  @override
  @JsonKey(name: "tokenCount")
  int get tokenCount;

  /// Create a copy of PromptTokensDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromptTokensDetailImplCopyWith<_$PromptTokensDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
