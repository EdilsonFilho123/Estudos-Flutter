// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactListEvent()';
}


}

/// @nodoc
class $ContactListEventCopyWith<$Res>  {
$ContactListEventCopyWith(ContactListEvent _, $Res Function(ContactListEvent) __);
}


/// @nodoc


class ContactListEventFindAll implements ContactListEvent {
   ContactListEventFindAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListEventFindAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ContactListEvent.findAll()';
}


}




/// @nodoc


class ContactListEventFind implements ContactListEvent {
   ContactListEventFind({required this.id});
  

 final  int id;

/// Create a copy of ContactListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactListEventFindCopyWith<ContactListEventFind> get copyWith => _$ContactListEventFindCopyWithImpl<ContactListEventFind>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListEventFind&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ContactListEvent.find(id: $id)';
}


}

/// @nodoc
abstract mixin class $ContactListEventFindCopyWith<$Res> implements $ContactListEventCopyWith<$Res> {
  factory $ContactListEventFindCopyWith(ContactListEventFind value, $Res Function(ContactListEventFind) _then) = _$ContactListEventFindCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ContactListEventFindCopyWithImpl<$Res>
    implements $ContactListEventFindCopyWith<$Res> {
  _$ContactListEventFindCopyWithImpl(this._self, this._then);

  final ContactListEventFind _self;
  final $Res Function(ContactListEventFind) _then;

/// Create a copy of ContactListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ContactListEventFind(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ContactListEventUpdate implements ContactListEvent {
   ContactListEventUpdate({required this.model});
  

 final  ContactModel model;

/// Create a copy of ContactListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactListEventUpdateCopyWith<ContactListEventUpdate> get copyWith => _$ContactListEventUpdateCopyWithImpl<ContactListEventUpdate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListEventUpdate&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'ContactListEvent.update(model: $model)';
}


}

/// @nodoc
abstract mixin class $ContactListEventUpdateCopyWith<$Res> implements $ContactListEventCopyWith<$Res> {
  factory $ContactListEventUpdateCopyWith(ContactListEventUpdate value, $Res Function(ContactListEventUpdate) _then) = _$ContactListEventUpdateCopyWithImpl;
@useResult
$Res call({
 ContactModel model
});




}
/// @nodoc
class _$ContactListEventUpdateCopyWithImpl<$Res>
    implements $ContactListEventUpdateCopyWith<$Res> {
  _$ContactListEventUpdateCopyWithImpl(this._self, this._then);

  final ContactListEventUpdate _self;
  final $Res Function(ContactListEventUpdate) _then;

/// Create a copy of ContactListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = null,}) {
  return _then(ContactListEventUpdate(
model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ContactModel,
  ));
}


}

/// @nodoc


class ContactListEventDelete implements ContactListEvent {
   ContactListEventDelete({required this.id});
  

 final  int id;

/// Create a copy of ContactListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactListEventDeleteCopyWith<ContactListEventDelete> get copyWith => _$ContactListEventDeleteCopyWithImpl<ContactListEventDelete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListEventDelete&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ContactListEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class $ContactListEventDeleteCopyWith<$Res> implements $ContactListEventCopyWith<$Res> {
  factory $ContactListEventDeleteCopyWith(ContactListEventDelete value, $Res Function(ContactListEventDelete) _then) = _$ContactListEventDeleteCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$ContactListEventDeleteCopyWithImpl<$Res>
    implements $ContactListEventDeleteCopyWith<$Res> {
  _$ContactListEventDeleteCopyWithImpl(this._self, this._then);

  final ContactListEventDelete _self;
  final $Res Function(ContactListEventDelete) _then;

/// Create a copy of ContactListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(ContactListEventDelete(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

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
   ContactListStateData(final  List<ContactModel> data): _data = data;
  

 final  List<ContactModel> _data;
 List<ContactModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ContactListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactListStateDataCopyWith<ContactListStateData> get copyWith => _$ContactListStateDataCopyWithImpl<ContactListStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactListStateData&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ContactListState.data(data: $data)';
}


}

/// @nodoc
abstract mixin class $ContactListStateDataCopyWith<$Res> implements $ContactListStateCopyWith<$Res> {
  factory $ContactListStateDataCopyWith(ContactListStateData value, $Res Function(ContactListStateData) _then) = _$ContactListStateDataCopyWithImpl;
@useResult
$Res call({
 List<ContactModel> data
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
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ContactListStateData(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ContactModel>,
  ));
}


}

/// @nodoc


class ContactListStateError implements ContactListState {
   ContactListStateError(this.error);
  

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
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
