import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_event.dart';
part 'contact_state.dart';

part 'contact_bloc.freezed.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactsRepository contactsRepository;

  ContactBloc(this.contactsRepository) : super(ContactState.initial()) {
    on<_ContactEventFind>(_find);
    on<_ContactEventSave>(_save);
    on<_ContactEventUpdate>(_update);
  }

  Future<void> _find(
    _ContactEventFind event,
    Emitter<ContactState> emit,
  ) async {
    emit(ContactState.loading());

    try {
      final user = await contactsRepository.find(event.id);
      emit(ContactState.data(user));
    } on Exception catch (e) {
      print(e);
      emit(ContactState.error('Erro ao encontrar o contato...'));
    }
  }

  Future<void> _save(
    _ContactEventSave event,
    Emitter<ContactState> emit,
  ) async {
    emit(ContactState.loading());

    try {
      await contactsRepository.create(event.contact);
      emit(ContactState.ok());
    } on Exception catch (e) {
      print(e);
      emit(ContactState.error('Erro ao salvar o contato...'));
    }
  }

  Future<void> _update(
    _ContactEventUpdate event,
    Emitter<ContactState> emit,
  ) async {
    emit(ContactState.loading());

    try {
      await contactsRepository.update(event.contact);
      emit(ContactState.ok());
    } on Exception catch (e) {
      print(e);
      emit(ContactState.error('Erro ao atualizar o contato...'));
    }
  }
}
