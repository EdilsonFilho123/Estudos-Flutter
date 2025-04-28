import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
// import 'package:contact_bloc/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class ContactsListPage extends StatelessWidget {
  const ContactsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactListBloc = context.read<ContactListBloc>();

    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/contacts/contact');
          contactListBloc.add(ContactListEvent.findAll());
        },
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async => contactListBloc.add(ContactListEvent.findAll()),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  // Loader<ContactListBloc, ContactListState>(
                  //   selector: (state) => (state is ContactListStateData)
                  // ),
                  Expanded(
                    child: BlocConsumer<ContactListBloc, ContactListState>(
                      listener: (_, state) {
                        // print(state);
                        if (state is ContactListStateLoading) {
                          Loader.show(context);
                        } else {
                          Loader.hide();

                          if (state is ContactListStateData) {
                            final messager = ScaffoldMessenger.of(context);
                            final msg =
                                '${state.data.length} contatos(s) carregado(s)';

                            messager.clearSnackBars();
                            messager.showSnackBar(SnackBar(content: Text(msg)));
                          } else if (state is ContactListStateError) {
                            final messager = ScaffoldMessenger.of(context);
                            final msg = state.error ?? '';

                            messager.clearSnackBars();
                            messager.showSnackBar(
                              SnackBar(
                                content: Text(msg),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        }
                      },
                      builder: (context, state) {
                        if (state is ContactListStateData) {
                          return ListView.builder(
                            itemCount: state.data.length,
                            itemBuilder: (_, index) {
                              return ListTile(
                                dense: true,
                                title: Text(state.data[index].name),
                                tileColor: Colors.red,
                                onLongPress:
                                    () => contactListBloc.add(
                                      ContactListEvent.delete(
                                        id: state.data[index].id!,
                                      ),
                                    ),
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/contacts/contact',
                                    arguments: {'id': state.data[index].id},
                                  );
                                },
                              );
                            },
                          );
                        } else {
                          return Center(
                            child: Text('Nenhum dado foi encontrado'),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
