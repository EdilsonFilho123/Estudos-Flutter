// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactListState()';
}


}

/// @nodoc
class $ContactListStateCopyWith<$Res>  {
$ContactListStateCopyWith(ContactListState _, $Res Function(ContactListState) __);
}


/// @nodoc


class ContactListStateInitial implements ContactListState {
   ContactListStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactListState.initial()';
}


}




/// @nodoc


class ContactListStateLoading implements ContactListState {
   ContactListStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactListState.loading()';
}


}




/// @nodoc


class ContactListStateData implements ContactListState {
   ContactListStateData({required final  List<ContactModel> contacts}): _contacts = contacts;
  

 final  List<ContactModel> _contacts;
 List<ContactModel> get contacts {
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contacts);
}


/// Create a copy of ContactListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactListStateDataCopyWith<ContactListStateData> get copyWith => _$ContactListStateDataCopyWithImpl<ContactListStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListStateData&&const DeepCollectionEquality().equals(other._contacts, _contacts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contacts));

@override
String toString() {
  return 'ContactListState.data(contacts: $contacts)';
}


}

/// @nodoc
abstract mixin class $ContactListStateDataCopyWith<$Res> implements $ContactListStateCopyWith<$Res> {
  factory $ContactListStateDataCopyWith(ContactListStateData value, $Res Function(ContactListStateData) _then) = _$ContactListStateDataCopyWithImpl;
@useResult
$Res call({
 List<ContactModel> contacts
});




}
/// @nodoc
class _$ContactListStateDataCopyWithImpl<$Res>
    implements $ContactListStateDataCopyWith<$Res> {
  _$ContactListStateDataCopyWithImpl(this._self, this._then);

  final ContactListStateData _self;
  final $Res Function(ContactListStateData) _then;

/// Create a copy of ContactListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contacts = null,}) {
  return _then(ContactListStateData(
contacts: null == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<ContactModel>,
  ));
}


}

/// @nodoc


class ContactListStateError implements ContactListState {
   ContactListStateError({this.error});
  

 final  String? error;

/// Create a copy of ContactListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactListStateErrorCopyWith<ContactListStateError> get copyWith => _$ContactListStateErrorCopyWithImpl<ContactListStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ContactListState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ContactListStateErrorCopyWith<$Res> implements $ContactListStateCopyWith<$Res> {
  factory $ContactListStateErrorCopyWith(ContactListStateError value, $Res Function(ContactListStateError) _then) = _$ContactListStateErrorCopyWithImpl;
@useResult
$Res call({
 String? error
});




}
/// @nodoc
class _$ContactListStateErrorCopyWithImpl<$Res>
    implements $ContactListStateErrorCopyWith<$Res> {
  _$ContactListStateErrorCopyWithImpl(this._self, this._then);

  final ContactListStateError _self;
  final $Res Function(ContactListStateError) _then;

/// Create a copy of ContactListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(ContactListStateError(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
