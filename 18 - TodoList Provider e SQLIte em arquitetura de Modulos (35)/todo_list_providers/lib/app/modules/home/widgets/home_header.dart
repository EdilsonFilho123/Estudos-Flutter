import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_providers/app/core/auth/auth_provider.dart';
import 'package:todo_list_providers/app/core/ui/theme_extensions.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Selector<AuthProvider, String?>(
        selector: (_, AuthProvider authProvider) {
          return context
              .read<AuthProvider>()
              .user
              ?.displayName
              ?.split(' ')
              .take(2)
              .join(' ');
        },
        builder: (_, name, __) {
          return Text(
            ((name == null) ? 'E ai...' : 'E ai, $name!'),
            style: context.textTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
    );
  }
}
