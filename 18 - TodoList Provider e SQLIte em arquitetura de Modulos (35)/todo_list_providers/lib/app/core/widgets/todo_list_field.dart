import 'package:flutter/material.dart';
import 'package:todo_list_providers/app/core/ui/todo_list_icons.dart';

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
    Key? key,
    required String label,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    bool obscureText = false,
    IconButton? suffixIconButton,
    FocusNode? focusNode,
  }) {
    return _createField(
      key,
      label,
      controller,
      validator,
      obscureText,
      suffixIconButton,
      focusNode
    );
  }

  static Widget password({
    Key? key,
    required String label,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    Icon iconOn = const Icon(TodoListIcons.eye, size: 15),
    Icon iconOff = const Icon(TodoListIcons.eye_slash, size: 15),
    FocusNode? focusNode,
  }) {
    var obscureText = true;
    var obscureTextVN = ValueNotifier<bool>(obscureText);

    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,
      builder:
          (_, obscureTextValue, __) => _createField(
            key,
            label,
            controller,
            validator,
            obscureTextValue,
            IconButton(
              onPressed: () => obscureTextVN.value = !obscureTextValue,
              icon: (obscureTextValue ? iconOn : iconOff),
            ),
            focusNode
          ),
    );
  }

  static TextFormField _createField(
    Key? key,
    String label,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    bool obscureText,
    IconButton? suffixIconButton,
    FocusNode? focusNode
  ) {
    return TextFormField(
      key: key,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      focusNode: focusNode,
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
