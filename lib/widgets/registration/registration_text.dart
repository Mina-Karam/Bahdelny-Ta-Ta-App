import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget registrationText({
  required String text,
  required bool isClick,
  required GestureTapCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: isClick
                      ? const Color.fromRGBO(153, 102, 51, 1.0)
                      : const Color.fromRGBO(153, 102, 51, 1.0),
                  width: 3))),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
              color: isClick
                  ? const Color.fromRGBO(153, 102, 51, 1.0)
                  : const Color.fromRGBO(153, 102, 51, 1.0),
              fontSize: 18),
        ),
      ),
    ),
  );
}
