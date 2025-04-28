part of 'contact_list_bloc.dart';

@freezed
abstract class ContactListEvent with _$ContactListEvent {
   factory ContactListEvent.findAll() = ContactListEventFindAll;
   factory ContactListEvent.find({required int id}) = ContactListEventFind;
   factory ContactListEvent.update({required ContactModel model}) = ContactListEventUpdate;
   factory ContactListEvent.delete({required int id}) = ContactListEventDelete;
}