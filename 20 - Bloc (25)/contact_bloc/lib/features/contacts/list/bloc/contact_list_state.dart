part of 'contact_list_bloc.dart';

@freezed
abstract class ContactListState with _$ContactListState {
   factory ContactListState.initial() = ContactListStateInitial;
   factory ContactListState.loading() = ContactListStateLoading;
   factory ContactListState.data(List<ContactModel> data) = ContactListStateData;
   factory ContactListState.error(String? error) = ContactListStateError;
}