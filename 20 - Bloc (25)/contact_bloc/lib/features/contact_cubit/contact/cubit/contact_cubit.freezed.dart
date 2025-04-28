// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactState()';
}


}

/// @nodoc
class $ContactStateCopyWith<$Res>  {
$ContactStateCopyWith(ContactState _, $Res Function(ContactState) __);
}


/// @nodoc


class ContactStateInitial implements ContactState {
   ContactStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactState.initial()';
}


}




/// @nodoc


class ContactStateLoading implements ContactState {
   ContactStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactState.loading()';
}


}




/// @nodoc


class ContactStateOk implements ContactState {
   ContactStateOk();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStateOk);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactState.ok()';
}


}




/// @nodoc


class ContactStateData implements ContactState {
   ContactStateData({required this.contact});
  

 final  ContactModel contact;

/// Create a copy of ContactState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactStateDataCopyWith<ContactStateData> get copyWith => _$ContactStateDataCopyWithImpl<ContactStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStateData&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode => Object.hash(runtimeType,contact);

@override
String toString() {
  return 'ContactState.data(contact: $contact)';
}


}

/// @nodoc
abstract mixin class $ContactStateDataCopyWith<$Res> implements $ContactStateCopyWith<$Res> {
  factory $ContactStateDataCopyWith(ContactStateData value, $Res Function(ContactStateData) _then) = _$ContactStateDataCopyWithImpl;
@useResult
$Res call({
 ContactModel contact
});




}
/// @nodoc
class _$ContactStateDataCopyWithImpl<$Res>
    implements $ContactStateDataCopyWith<$Res> {
  _$ContactStateDataCopyWithImpl(this._self, this._then);

  final ContactStateData _self;
  final $Res Function(ContactStateData) _then;

/// Create a copy of ContactState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contact = null,}) {
  return _then(ContactStateData(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactModel,
  ));
}


}

/// @nodoc


class ContactStateError implements ContactState {
   ContactStateError(this.error);
  

 final  String? error;

/// Create a copy of ContactState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactStateErrorCopyWith<ContactStateError> get copyWith => _$ContactStateErrorCopyWithImpl<ContactStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ContactState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ContactStateErrorCopyWith<$Res> implements $ContactStateCopyWith<$Res> {
  factory $ContactStateErrorCopyWith(ContactStateError value, $Res Function(ContactStateError) _then) = _$ContactStateErrorCopyWithImpl;
@useResult
$Res call({
 String? error
});




}
/// @nodoc
class _$ContactStateErrorCopyWithImpl<$Res>
    implements $ContactStateErrorCopyWith<$Res> {
  _$ContactStateErrorCopyWithImpl(this._self, this._then);

  final ContactStateError _self;
  final $Res Function(ContactStateError) _then;

/// Create a copy of ContactState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ContactStateError(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
