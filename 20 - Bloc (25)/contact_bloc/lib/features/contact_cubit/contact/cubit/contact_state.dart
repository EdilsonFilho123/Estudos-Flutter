part of 'contact_cubit.dart';

@freezed
abstract class ContactState with _$ContactState {
   factory ContactState.initial() = ContactStateInitial;
   factory ContactState.loading() = ContactStateLoading;
   factory ContactState.ok() = ContactStateOk;
   factory ContactState.data({required ContactModel contact}) = ContactStateData;
   factory ContactState.error(String? error) = ContactStateError;
}