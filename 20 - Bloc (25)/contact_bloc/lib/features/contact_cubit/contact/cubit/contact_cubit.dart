import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_state.dart';

part 'contact_cubit.freezed.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactsRepository contactsRepository;
  ContactCubit(this.contactsRepository) : super(ContactState.initial());

  Future<void> find(int id) async {
    emit(ContactState.loading());

    try {
      final user = await contactsRepository.find(id);
      emit(ContactState.data(contact: user));
    } on Exception catch (e) {
      print(e);
      emit(ContactState.error('Erro ao encontrar o contato...'));
    }
  }

  Future<void> save(ContactModel contact) async {
    emit(ContactState.loading());

    try {
      await contactsRepository.create(contact);
      emit(ContactState.ok());
    } on Exception catch (e) {
      print(e);
      emit(ContactState.error('Erro ao salvar o contato...'));
    }
  }

  Future<void> update(ContactModel contact) async {
    emit(ContactState.loading());

    try {
      await contactsRepository.update(contact);
      emit(ContactState.ok());
    } on Exception catch (e) {
      print(e);
      emit(ContactState.error('Erro ao atualizar o contato...'));
    }
  }
}
