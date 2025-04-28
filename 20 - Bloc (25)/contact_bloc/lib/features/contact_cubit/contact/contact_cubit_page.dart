import 'package:contact_bloc/features/contact_cubit/contact/cubit/contact_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';

class ContactCubitPage extends StatefulWidget {
  const ContactCubitPage({super.key});

  @override
  State<ContactCubitPage> createState() => _ContactCubitPageState();
}

class _ContactCubitPageState extends State<ContactCubitPage> {
  final _formKey = GlobalKey<FormState>();
  final _controllers = <String, TextEditingController>{
    'name': TextEditingController(),
    'email': TextEditingController(),
  };
  ContactModel? _contact;
  bool _isEdit = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final params =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

      if (params != null) {
        setState(() {
          if (params.containsKey('id') && params['id'] is int) {
            _isEdit = true;
            context.read<ContactCubit>().find(params['id']);
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controllers.forEach((key, value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contactCubit = context.read<ContactCubit>();

    return Scaffold(
      appBar: AppBar(title: Text('Contact ${_isEdit ? 'Edit' : 'Register'}')),
      body: BlocListener<ContactCubit, ContactState>(
        listener: (context, state) {
          if (state is ContactStateLoading) {
            Loader.show(context);
          } else {
            Loader.hide();
          }

          if (state is ContactStateData) {
            _contact = state.contact;
            _controllers['name']!.text = state.contact.name;
            _controllers['email']!.text = state.contact.email;
          }

          if (state is ContactStateOk) {
            showDialog(
              context: context,
              builder:
                  (_) => SimpleDialog(
                    title: Center(child: Text('Informação')),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            'Contato ${_isEdit ? 'atualizado' : 'salvo'} com sucesso',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: Text('Voltar a lista de contatos'),
                      ),
                    ],
                  ),
            );
          }

          if (state is ContactStateError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  state.error ??
                      'Erro ao ${_isEdit ? 'atualizar' : 'salvar'}...',
                ),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _controllers['name'],
                  decoration: InputDecoration(label: Text('Nome')),
                  validator:
                      (value) =>
                          ((value?.isEmpty ?? true)
                              ? 'Nome é obrigatório!'
                              : null),
                ),
                TextFormField(
                  controller: _controllers['email'],
                  decoration: InputDecoration(label: Text('E-mail')),
                  validator:
                      (value) =>
                          ((value?.isEmpty ?? true)
                              ? 'E-mail é obrigatório!'
                              : null),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      final newContact = ContactModel(
                        id: _contact?.id,
                        name: _controllers['name']!.text,
                        email: _controllers['email']!.text,
                      );

                      if (_isEdit) {
                        if (newContact.name == _contact!.name &&
                            newContact.email == _contact!.email) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Nenhum dado foi alterado!'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } else {
                          contactCubit.update(newContact);
                        }
                      } else {
                        contactCubit.save(newContact);
                      }
                    }
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
