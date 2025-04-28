// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pattern_matching.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Union {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Union);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Union()';
}


}

/// @nodoc
class $UnionCopyWith<$Res>  {
$UnionCopyWith(Union _, $Res Function(Union) __);
}


/// @nodoc


class UnionData implements Union {
   UnionData(this.value);
  

 final  int value;

/// Create a copy of Union
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnionDataCopyWith<UnionData> get copyWith => _$UnionDataCopyWithImpl<UnionData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnionData&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'Union(value: $value)';
}


}

/// @nodoc
abstract mixin class $UnionDataCopyWith<$Res> implements $UnionCopyWith<$Res> {
  factory $UnionDataCopyWith(UnionData value, $Res Function(UnionData) _then) = _$UnionDataCopyWithImpl;
@useResult
$Res call({
 int value
});




}
/// @nodoc
class _$UnionDataCopyWithImpl<$Res>
    implements $UnionDataCopyWith<$Res> {
  _$UnionDataCopyWithImpl(this._self, this._then);

  final UnionData _self;
  final $Res Function(UnionData) _then;

/// Create a copy of Union
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(UnionData(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UnionLoading implements Union {
   UnionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Union.loading()';
}


}




/// @nodoc


class UnionError implements Union {
   UnionError([this.message]);
  

 final  String? message;

/// Create a copy of Union
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnionErrorCopyWith<UnionError> get copyWith => _$UnionErrorCopyWithImpl<UnionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnionError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Union.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnionErrorCopyWith<$Res> implements $UnionCopyWith<$Res> {
  factory $UnionErrorCopyWith(UnionError value, $Res Function(UnionError) _then) = _$UnionErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnionErrorCopyWithImpl<$Res>
    implements $UnionErrorCopyWith<$Res> {
  _$UnionErrorCopyWithImpl(this._self, this._then);

  final UnionError _self;
  final $Res Function(UnionError) _then;

/// Create a copy of Union
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnionError(
freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
