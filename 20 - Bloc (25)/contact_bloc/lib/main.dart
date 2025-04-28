import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example.dart';
import 'package:contact_bloc/features/contact_cubit/contact/contact_cubit_page.dart';
import 'package:contact_bloc/features/contact_cubit/contact/cubit/contact_cubit.dart';
import 'package:contact_bloc/features/contact_cubit/list/contact_list_cubit_page.dart';
import 'package:contact_bloc/features/contact_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/contacts/contact/bloc/contact_bloc.dart';
import 'package:contact_bloc/features/contacts/list/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/list/contacts_list_page.dart';
import 'package:contact_bloc/features/contacts/contact/contact_page.dart';
import 'package:contact_bloc/home/home_page.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ContactsRepository(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: '/home',
        routes: {
          '/home': (_) => HomePage(),
          '/bloc/example':
              (_) => BlocProvider(
                create: (_) => ExampleBloc()..add(ExampleEventFindNames()),
                child: BlocExample(),
              ),
          '/bloc/example/freezed':
              (_) => BlocProvider(
                create:
                    (context) =>
                        ExampleFreezedBloc()
                          ..add(ExampleFreezedEvent.findNames()),
                child: BlocFreezedExample(),
              ),
          '/contacts/list':
              (_) => BlocProvider(
                create:
                    (context) =>
                        ContactListBloc(context.read<ContactsRepository>())
                          ..add(ContactListEvent.findAll()),
                child: ContactsListPage(),
              ),
          '/contacts/contact':
              (_) => BlocProvider(
                create:
                    (context) =>
                        ContactBloc(context.read<ContactsRepository>()),
                child: ContactPage(),
              ),
          '/contacts_cubit/list':
              (_) => BlocProvider(
                create:
                    (context) =>
                        ContactListCubit(context.read<ContactsRepository>())
                          ..findAll(),
                child: ContactListCubitPage(),
              ),
          '/contacts_cubit/contact':
              (_) => BlocProvider(
                create:
                    (context) =>
                        ContactCubit(context.read<ContactsRepository>()),
                child: ContactCubitPage(),
              ),
        },
      ),
    );
  }
}
