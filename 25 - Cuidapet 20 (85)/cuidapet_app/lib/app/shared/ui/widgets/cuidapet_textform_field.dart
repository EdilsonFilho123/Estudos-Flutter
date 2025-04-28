// import 'package:cuidapet/app/shared/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CuidapetTextformField extends StatelessWidget {
  final String label;
  final bool obscure;
  final ValueNotifier<bool> _obscureText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  CuidapetTextformField({
    super.key,
    required this.label,
    this.obscure = false,
    this.controller,
    this.validator,
  }) : _obscureText = ValueNotifier(obscure);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _obscureText,
      builder: (_, obscureTextValue, child) {
        return TextFormField(
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 15, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 0,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              gapPadding: 0,
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon:
                (obscure
                    ? IconButton(
                      onPressed: () => _obscureText.value = !obscureTextValue,
                      icon: Icon(
                        obscureTextValue
                            ? Icons.lock_outlined
                            : Icons.lock_open,
                      ),
                      // color: context.primaryColor,
                    )
                    : null),
          ),
          obscureText: obscureTextValue,
        );
      },
    );
  }
}
