import 'package:contact_bloc/features/contact_cubit/list/cubit/contact_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class ContactListCubitPage extends StatelessWidget {
  const ContactListCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactListBloc = context.read<ContactListCubit>();

    return Scaffold(
      appBar: AppBar(title: Text('Contact List Cubit')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/contacts_cubit/contact');
          contactListBloc.findAll();
        },
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async => contactListBloc.findAll(),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Expanded(
                    child: BlocConsumer<ContactListCubit, ContactListState>(
                      listener: (_, state) {
                        // print(state);
                        if (state is ContactListStateLoading) {
                          Loader.show(context);
                        } else {
                          Loader.hide();

                          if (state is ContactListStateData) {
                            final messager = ScaffoldMessenger.of(context);
                            final msg =
                                '${state.contacts.length} contatos(s) carregado(s)';

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
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: state.contacts.length,
                            itemBuilder: (_, index) {
                              return ListTile(
                                dense: true,
                                title: Text(state.contacts[index].name),
                                subtitle: Text(state.contacts[index].email),
                                tileColor: Colors.red,
                                onLongPress:
                                    () => contactListBloc.delete(state.contacts[index].id!),
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    '/contacts_cubit/contact',
                                    arguments: {'id': state.contacts[index].id},
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
