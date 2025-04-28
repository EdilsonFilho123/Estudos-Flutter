// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactEvent()';
}


}

/// @nodoc
class $ContactEventCopyWith<$Res>  {
$ContactEventCopyWith(ContactEvent _, $Res Function(ContactEvent) __);
}


/// @nodoc


class _ContactEventFind implements ContactEvent {
   _ContactEventFind({required this.id});
  

 final  int id;

/// Create a copy of ContactEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactEventFindCopyWith<_ContactEventFind> get copyWith => __$ContactEventFindCopyWithImpl<_ContactEventFind>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactEventFind&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ContactEvent.find(id: $id)';
}


}

/// @nodoc
abstract mixin class _$ContactEventFindCopyWith<$Res> implements $ContactEventCopyWith<$Res> {
  factory _$ContactEventFindCopyWith(_ContactEventFind value, $Res Function(_ContactEventFind) _then) = __$ContactEventFindCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$ContactEventFindCopyWithImpl<$Res>
    implements _$ContactEventFindCopyWith<$Res> {
  __$ContactEventFindCopyWithImpl(this._self, this._then);

  final _ContactEventFind _self;
  final $Res Function(_ContactEventFind) _then;

/// Create a copy of ContactEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_ContactEventFind(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _ContactEventSave implements ContactEvent {
   _ContactEventSave({required this.contact});
  

 final  ContactModel contact;

/// Create a copy of ContactEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactEventSaveCopyWith<_ContactEventSave> get copyWith => __$ContactEventSaveCopyWithImpl<_ContactEventSave>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactEventSave&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode => Object.hash(runtimeType,contact);

@override
String toString() {
  return 'ContactEvent.save(contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$ContactEventSaveCopyWith<$Res> implements $ContactEventCopyWith<$Res> {
  factory _$ContactEventSaveCopyWith(_ContactEventSave value, $Res Function(_ContactEventSave) _then) = __$ContactEventSaveCopyWithImpl;
@useResult
$Res call({
 ContactModel contact
});




}
/// @nodoc
class __$ContactEventSaveCopyWithImpl<$Res>
    implements _$ContactEventSaveCopyWith<$Res> {
  __$ContactEventSaveCopyWithImpl(this._self, this._then);

  final _ContactEventSave _self;
  final $Res Function(_ContactEventSave) _then;

/// Create a copy of ContactEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contact = null,}) {
  return _then(_ContactEventSave(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactModel,
  ));
}


}

/// @nodoc


class _ContactEventUpdate implements ContactEvent {
   _ContactEventUpdate({required this.contact});
  

 final  ContactModel contact;

/// Create a copy of ContactEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactEventUpdateCopyWith<_ContactEventUpdate> get copyWith => __$ContactEventUpdateCopyWithImpl<_ContactEventUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactEventUpdate&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode => Object.hash(runtimeType,contact);

@override
String toString() {
  return 'ContactEvent.update(contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$ContactEventUpdateCopyWith<$Res> implements $ContactEventCopyWith<$Res> {
  factory _$ContactEventUpdateCopyWith(_ContactEventUpdate value, $Res Function(_ContactEventUpdate) _then) = __$ContactEventUpdateCopyWithImpl;
@useResult
$Res call({
 ContactModel contact
});




}
/// @nodoc
class __$ContactEventUpdateCopyWithImpl<$Res>
    implements _$ContactEventUpdateCopyWith<$Res> {
  __$ContactEventUpdateCopyWithImpl(this._self, this._then);

  final _ContactEventUpdate _self;
  final $Res Function(_ContactEventUpdate) _then;

/// Create a copy of ContactEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? contact = null,}) {
  return _then(_ContactEventUpdate(
contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as ContactModel,
  ));
}


}

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
   ContactStateData(this.data);
  

 final  ContactModel data;

/// Create a copy of ContactState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactStateDataCopyWith<ContactStateData> get copyWith => _$ContactStateDataCopyWithImpl<ContactStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactStateData&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ContactState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $ContactStateDataCopyWith<$Res> implements $ContactStateCopyWith<$Res> {
  factory $ContactStateDataCopyWith(ContactStateData value, $Res Function(ContactStateData) _then) = _$ContactStateDataCopyWithImpl;
@useResult
$Res call({
 ContactModel data
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
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ContactStateData(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
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
