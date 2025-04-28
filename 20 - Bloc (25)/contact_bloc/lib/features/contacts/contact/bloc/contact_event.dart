part of 'contact_bloc.dart';

@freezed
abstract class ContactEvent with _$ContactEvent {
  factory ContactEvent.find({required int id}) = _ContactEventFind;
  factory ContactEvent.save({required ContactModel contact}) = _ContactEventSave;
  factory ContactEvent.update({required ContactModel contact}) = _ContactEventUpdate;
}
