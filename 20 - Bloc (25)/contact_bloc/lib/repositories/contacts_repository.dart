import 'package:contact_bloc/models/contact_model.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
  final url = 'http://10.0.2.2:3031';

  Future<List<ContactModel>> findAll() async {
    final response = await Dio().get('$url/contacts');
    return response.data
        ?.map<ContactModel>((contact) => ContactModel.fromMap(contact))
        .toList();
  }

  Future<ContactModel> find(int id) async {
    final response = await Dio().get('$url/contacts/$id');
    return ContactModel.fromMap(response.data);
  }

  Future<void> create(ContactModel model) =>
      Dio().post('$url/contacts', data: model.toMap());

  Future<void> update(ContactModel model) =>
      Dio().put('$url/contacts/${model.id}', data: model.toMap());

  Future<void> delete(int id) => Dio().delete('$url/contacts/$id');
}
