import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  // Tests seguem smp 3 partes: Declaração, Preparação e Execução;

  // Declaração:
  late ContactsRepository repository;
  late ContactListBloc bloc;
  late List<ContactModel> contacts;

  // Preparação
  setUp(() {
    repository = MockContactsRepository();
    bloc = ContactListBloc(repository);
    contacts = [ContactModel(name: 'Teste', email: 'teste@email.com')];
  });

  // Execução
  blocTest<ContactListBloc, ContactListState>(
    'Deve buscar os contatos',
    build: () => bloc,
    act: (bloc) => bloc.add(ContactListEvent.findAll()),
    setUp: () {
      when(() => repository.findAll()).thenAnswer((_) async => contacts);
    },
    expect: () => [ContactListState.loading(), ContactListState.data(contacts)],
  );

  blocTest<ContactListBloc, ContactListState>(
    'Deve retornar Erro',
    build: () => bloc,
    act: (bloc) => bloc.add(ContactListEvent.findAll()),
    setUp: () {
      when(() => repository.findAll()).thenAnswer((_) => throw Exception());
    },
    expect: () => [ContactListState.loading(), ContactListState.error('Erro ao encontrar os contatos')],
  );

  // testWidgets('contact bloc ...', (tester) async {
  //   // TODO: Implement test
  // });
}
