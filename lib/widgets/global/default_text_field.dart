import 'package:bhdelni/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget defaultTextField({
  required TextEditingController control,
  required TextInputType type,
  required String text,
  bool obscure = false,
  ValueChanged? onSubmit,
  ValueChanged? onchange,
  GestureTapCallback? onTape,
  FormFieldValidator? validate,
  Color iconColor = Colors.black,
  var maxLines = 1,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              fontSize: 14,
              color: ConstColors.coffee,
              fontWeight: FontWeight.w500),
        ),
      ),
      TextFormField(
        controller: control,
        keyboardType: type,
        obscureText: obscure,
        onChanged: onchange,
        onTap: onTape,
        validator: validate,
        maxLines: maxLines,
        onFieldSubmitted: onSubmit,
        cursorColor: ConstColors.coffee,
        style: GoogleFonts.montserrat(fontSize: 14, color: ConstColors.coffee),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: ConstColors.coffee,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: ConstColors.coffee,
              width: 1.0,
            ),
          ),
          errorStyle: const TextStyle(
            fontSize: 10,
            color: ConstColors.coffee,
          ),
        ),
      ),
    ],
  );
}
