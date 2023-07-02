import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myDivider() => Padding(
  padding: const EdgeInsets.all(15.0),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);



Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  VoidCallback? onSubmit,
  VoidCallback? onTap,
  Function? onChange,
  FormFieldValidator? validate,
  int? maxlines,
  bool isPassword = false,
  required String label,
  IconData? prefix,
  IconData? suffix,
  bool isClickable = true,
  VoidCallback? suffixPressed,
}) =>
    TextFormField(
      validator: validate,
      controller: controller,
      keyboardType: type,
      enabled: isClickable,
      onChanged: (String value) {
        onChange;
      },
      onTap: onTap,
      onFieldSubmitted: (value) {
        onSubmit;
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        ),
        border: OutlineInputBorder(),
      ),
    );
