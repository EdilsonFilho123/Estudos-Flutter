import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:todo_list_providers/app/core/auth/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/navigator/todo_list_navigator.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';
import 'package:todo_list_providers/app/core/widgets/todo_list_field.dart';
import 'package:todo_list_providers/app/services/user/user_service.dart';
import 'package:validatorless/validatorless.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  final nameKey = GlobalKey<FormFieldState>();
  final nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = context.read<AuthProvider>().user?.displayName ?? '';
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.primaryColor.withAlpha(70),
            ),
            child: Row(
              children: [
                Selector<AuthProvider, String>(
                  selector: (context, authProvider) {
                    return authProvider.user?.photoURL ??
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/800px-User_icon_2.svg.png';
                  },
                  builder: (_, image, __) {
                    return CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 30,
                    );
                  },
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Selector<AuthProvider, String>(
                      selector: (context, authProvider) {
                        return authProvider.user?.displayName ?? 'Usuário';
                      },
                      builder: (_, name, __) {
                        return Text(name, style: context.textTheme.titleSmall);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap:
                () => showDialog(
                  context: context,
                  builder:
                      (_) => AlertDialog(
                        title: Text('Alterar Nome'),
                        content: TodoListField.field(
                          key: nameKey,
                          label: 'Nome',
                          controller: nameController,
                          validator: Validatorless.multiple([
                            Validatorless.required('Nome é obrigatório.'),
                            Validatorless.min(
                              3,
                              'Deve conter, ao menos, 3 caracteres',
                            ),
                          ]),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => TodoListNavigator.to.pop(),
                            child: Text(
                              'Cancelar',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                          TextButton(
                            onPressed: () async {
                              if (nameKey.currentState?.validate() ?? false) {
                                Loader.show(context);
                                await context
                                    .read<UserService>()
                                    .updateDisplayName(
                                      nameKey.currentState!.value,
                                    );
                                Loader.hide();
                                TodoListNavigator.to.pop();
                              }
                            },
                            child: Text('Confirmar'),
                          ),
                        ],
                      ),
                ),
            title: Text('Alterar Nome'),
          ),
          ListTile(
            onTap: () => context.read<AuthProvider>().logout(),
            title: Text('Sair'),
          ),
        ],
      ),
    );
  }
}
