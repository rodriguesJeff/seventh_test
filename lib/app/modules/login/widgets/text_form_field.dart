import 'package:flutter/material.dart';

Widget textFormField(
  bool obscure,
  Function(String) onChanged,
  String? label,
  String? errorText,
) {
  return TextFormField(
    obscureText: obscure,
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: label,
      errorText: errorText,
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: 1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ),
  );
}
