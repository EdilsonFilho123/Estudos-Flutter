import 'package:flutter/material.dart';
import 'package:todo_list_provider/app/core/ui/todo_list_icons.dart';

class TodoListField {
  static final labelStyle = TextStyle(fontSize: 15, color: Colors.black);
  static final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
  );
  static final errorBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(30),
  );

  static TextFormField field({
    required String label,
    TextEditingController? controller,
    FormFieldValidator? validator,
    bool obscureText = false,
    IconButton? suffixIconButton,
  }) {
    return _createField(
      label,
      controller,
      validator,
      obscureText,
      suffixIconButton,
    );
  }

  static Widget password({
    required String label,
    TextEditingController? controller,
    FormFieldValidator? validator,
    Icon iconOn = const Icon(TodoListIcons.eye, size: 15),
    Icon iconOff = const Icon(TodoListIcons.eye_slash, size: 15),
  }) {
    var obscureText = true;
    var obscureTextVN = ValueNotifier<bool>(obscureText);

    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,
      builder:
          (_, obscureTextValue, __) => _createField(
            label,
            controller,
            validator,
            obscureTextValue,
            IconButton(
              onPressed: () => obscureTextVN.value = !obscureTextValue,
              icon: (obscureTextValue ? iconOn : iconOff),
            ),
          ),
    );
  }

  static TextFormField _createField(
    String label,
    TextEditingController? controller,
    FormFieldValidator? validator,
    bool obscureText,
    IconButton? suffixIconButton,
  ) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: labelStyle,
        border: border,
        errorBorder: errorBorder,
        suffixIcon: suffixIconButton,
      ),
    );
  }
}
