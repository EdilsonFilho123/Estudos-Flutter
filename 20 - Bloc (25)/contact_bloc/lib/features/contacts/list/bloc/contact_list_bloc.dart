import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_event.dart';
part 'contact_list_state.dart';

part 'contact_list_bloc.freezed.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  final ContactsRepository contactsRepository;
  List<ContactModel> listContatos = [];

  ContactListBloc(this.contactsRepository) : super(ContactListState.initial()) {
    on<ContactListEventFindAll>(_findAll);
    on<ContactListEventFind>(_find);
    on<ContactListEventUpdate>(_update);
    on<ContactListEventDelete>(_delete);
  }

  Future<void> _findAll(
    ContactListEventFindAll event,
    Emitter<ContactListState> emit,
  ) async {
    emit(ContactListState.loading());

    try {
      listContatos = await contactsRepository.findAll();
      emit(ContactListState.data(listContatos));
    } on Exception catch (e) {
      print(e);
      emit(ContactListState.error('Erro ao encontrar os contatos'));
    }
  }

  Future<void> _find(
    ContactListEventFind event,
    Emitter<ContactListState> emit,
  ) async {
    emit(ContactListState.loading());

    try {
      listContatos = [ await contactsRepository.find(event.id) ];
      emit(ContactListState.data(listContatos));
    } on Exception catch (e) {
      print(e);
      emit(ContactListState.error('Erro ao encontrar o contato'));
    }
  }

  Future<void> _update(
    ContactListEventUpdate event,
    Emitter<ContactListState> emit,
  ) async {
    emit(ContactListState.loading());

    try {
      await contactsRepository.update(event.model);
    } on Exception catch (e) {
      print(e);
      emit(ContactListState.error('Erro ao atualizar o contato'));
      return;
    }

    add(ContactListEvent.findAll());
  }

  Future<void> _delete(
    ContactListEventDelete event,
    Emitter<ContactListState> emit,
  ) async {
    emit(ContactListState.loading());

    try {
      await contactsRepository.delete(event.id);
    } on Exception catch (e) {
      print(e);
      emit(ContactListState.error('Erro ao deletar o contato'));
      return;
    }
    
    add(ContactListEvent.findAll());
  }
}
