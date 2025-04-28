part of '../login_page.dart';

class _LoginButtons extends StatelessWidget {
  const _LoginButtons();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        RoundedButtonWithIcon(
          text: 'Facebook',
          icon: CuidapetIcons.facebook,
          color: Color(0xFF4267B3),
          width: .42.sw,
        ),
        RoundedButtonWithIcon(
          text: 'Google',
          icon: CuidapetIcons.google,
          color: Color(0xFFE15031),
          width: .42.sw,
        ),
        RoundedButtonWithIcon(
          text: 'Cadastre-se',
          icon: Icons.email_rounded,
          color: context.primaryColorDark,
          width: .42.sw,
          onPressed: () => Modular.to.pushNamed('/auth/register/'),
        ),
      ],
    );
  }
}
