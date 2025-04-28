part of 'contact_list_cubit.dart';

@freezed
abstract class ContactListState with _$ContactListState {
   factory ContactListState.initial() = ContactListStateInitial;
   factory ContactListState.loading() = ContactListStateLoading;
   factory ContactListState.data({required List<ContactModel> contacts}) = ContactListStateData;
   factory ContactListState.error({String? error}) = ContactListStateError;
}