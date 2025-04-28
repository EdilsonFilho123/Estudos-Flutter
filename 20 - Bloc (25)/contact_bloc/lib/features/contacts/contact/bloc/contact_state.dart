part of 'contact_bloc.dart';

@freezed
abstract class ContactState with _$ContactState {
  factory ContactState.initial() = ContactStateInitial;
  factory ContactState.loading() = ContactStateLoading;
  factory ContactState.ok() = ContactStateOk;
  factory ContactState.data(ContactModel data) = ContactStateData;
  factory ContactState.error(String? error) = ContactStateError;
}
