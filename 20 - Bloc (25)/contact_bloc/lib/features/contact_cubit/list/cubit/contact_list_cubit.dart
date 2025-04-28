import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_state.dart';

part 'contact_list_cubit.freezed.dart';

class ContactListCubit extends Cubit<ContactListState> {
  final ContactsRepository contactsRepository;
  ContactListCubit(this.contactsRepository) : super(ContactListState.initial());

  Future<void> findAll() async {
    emit(ContactListState.loading());

    try {
      emit(ContactListState.data(contacts: await contactsRepository.findAll()));
    } on Exception catch (e) {
      print(e);
      emit(ContactListState.error(error: 'Erro ao encontrar os contatos'));
    }
  }

  Future<void> delete(id) async {
    emit(ContactListState.loading());

    try {
      await contactsRepository.delete(id);
      await findAll();
    } on Exception catch (e) {
      print(e);
      emit(ContactListState.error(error: 'Erro ao deletar o contato'));
    }
  }
}
