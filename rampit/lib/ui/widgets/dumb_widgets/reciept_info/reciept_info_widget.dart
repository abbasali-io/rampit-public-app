// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

library reciept_info_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:flutter/material.dart';

class RecieptInfoWidget extends StatelessWidget {
  Size size;
  String title;
  String amount;
  FontWeight fontWeight;
  RecieptInfoWidget({
  required this.size,
  required this.title,
  required this.amount,
  required this.fontWeight,
});
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: MyStyles.themeData().highlightColor,
            fontSize: size.height * 0.022,
            fontWeight: fontWeight,
          ),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Text(
          'RM '+amount,
          style: GoogleFonts.poppins(
            color: MyStyles.themeData().highlightColor,
            fontSize: size.height * 0.022,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
  }
}
