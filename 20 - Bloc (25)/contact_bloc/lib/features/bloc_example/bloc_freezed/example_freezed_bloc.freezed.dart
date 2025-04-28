// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_freezed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExampleFreezedState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleFreezedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExampleFreezedState()';
}


}

/// @nodoc
class $ExampleFreezedStateCopyWith<$Res>  {
$ExampleFreezedStateCopyWith(ExampleFreezedState _, $Res Function(ExampleFreezedState) __);
}


/// @nodoc


class ExampleFreezedStateInitial implements ExampleFreezedState {
   ExampleFreezedStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleFreezedStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExampleFreezedState.initial()';
}


}




/// @nodoc


class ExampleFreezedStateLoading implements ExampleFreezedState {
   ExampleFreezedStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleFreezedStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExampleFreezedState.loading()';
}


}




/// @nodoc


class ExampleFreezedStateData implements ExampleFreezedState {
   ExampleFreezedStateData({required final  List<String> names}): _names = names;
  

 final  List<String> _names;
 List<String> get names {
  if (_names is EqualUnmodifiableListView) return _names;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_names);
}


/// Create a copy of ExampleFreezedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExampleFreezedStateDataCopyWith<ExampleFreezedStateData> get copyWith => _$ExampleFreezedStateDataCopyWithImpl<ExampleFreezedStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleFreezedStateData&&const DeepCollectionEquality().equals(other._names, _names));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_names));

@override
String toString() {
  return 'ExampleFreezedState.data(names: $names)';
}


}

/// @nodoc
abstract mixin class $ExampleFreezedStateDataCopyWith<$Res> implements $ExampleFreezedStateCopyWith<$Res> {
  factory $ExampleFreezedStateDataCopyWith(ExampleFreezedStateData value, $Res Function(ExampleFreezedStateData) _then) = _$ExampleFreezedStateDataCopyWithImpl;
@useResult
$Res call({
 List<String> names
});




}
/// @nodoc
class _$ExampleFreezedStateDataCopyWithImpl<$Res>
    implements $ExampleFreezedStateDataCopyWith<$Res> {
  _$ExampleFreezedStateDataCopyWithImpl(this._self, this._then);

  final ExampleFreezedStateData _self;
  final $Res Function(ExampleFreezedStateData) _then;

/// Create a copy of ExampleFreezedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? names = null,}) {
  return _then(ExampleFreezedStateData(
names: null == names ? _self._names : names // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$ExampleFreezedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleFreezedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExampleFreezedEvent()';
}


}

/// @nodoc
class $ExampleFreezedEventCopyWith<$Res>  {
$ExampleFreezedEventCopyWith(ExampleFreezedEvent _, $Res Function(ExampleFreezedEvent) __);
}


/// @nodoc


class _ExampleFreezedEventFindNames implements ExampleFreezedEvent {
   _ExampleFreezedEventFindNames();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExampleFreezedEventFindNames);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ExampleFreezedEvent.findNames()';
}


}




/// @nodoc


class _ExampleFreezedEventAddName implements ExampleFreezedEvent {
   _ExampleFreezedEventAddName(this.name);
  

 final  String name;

/// Create a copy of ExampleFreezedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExampleFreezedEventAddNameCopyWith<_ExampleFreezedEventAddName> get copyWith => __$ExampleFreezedEventAddNameCopyWithImpl<_ExampleFreezedEventAddName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExampleFreezedEventAddName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ExampleFreezedEvent.addName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$ExampleFreezedEventAddNameCopyWith<$Res> implements $ExampleFreezedEventCopyWith<$Res> {
  factory _$ExampleFreezedEventAddNameCopyWith(_ExampleFreezedEventAddName value, $Res Function(_ExampleFreezedEventAddName) _then) = __$ExampleFreezedEventAddNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$ExampleFreezedEventAddNameCopyWithImpl<$Res>
    implements _$ExampleFreezedEventAddNameCopyWith<$Res> {
  __$ExampleFreezedEventAddNameCopyWithImpl(this._self, this._then);

  final _ExampleFreezedEventAddName _self;
  final $Res Function(_ExampleFreezedEventAddName) _then;

/// Create a copy of ExampleFreezedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_ExampleFreezedEventAddName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ExampleFreezedEventRemoveName implements ExampleFreezedEvent {
   _ExampleFreezedEventRemoveName(this.name);
  

 final  String name;

/// Create a copy of ExampleFreezedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExampleFreezedEventRemoveNameCopyWith<_ExampleFreezedEventRemoveName> get copyWith => __$ExampleFreezedEventRemoveNameCopyWithImpl<_ExampleFreezedEventRemoveName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExampleFreezedEventRemoveName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'ExampleFreezedEvent.removeName(name: $name)';
}


}

/// @nodoc
abstract mixin class _$ExampleFreezedEventRemoveNameCopyWith<$Res> implements $ExampleFreezedEventCopyWith<$Res> {
  factory _$ExampleFreezedEventRemoveNameCopyWith(_ExampleFreezedEventRemoveName value, $Res Function(_ExampleFreezedEventRemoveName) _then) = __$ExampleFreezedEventRemoveNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class __$ExampleFreezedEventRemoveNameCopyWithImpl<$Res>
    implements _$ExampleFreezedEventRemoveNameCopyWith<$Res> {
  __$ExampleFreezedEventRemoveNameCopyWithImpl(this._self, this._then);

  final _ExampleFreezedEventRemoveName _self;
  final $Res Function(_ExampleFreezedEventRemoveName) _then;

/// Create a copy of ExampleFreezedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_ExampleFreezedEventRemoveName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
