// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

library build_social_media_button_widget;

import 'dart:core';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class BuildSocialMediaButtonWidget extends StatelessWidget {
  Size size;
  double? widthSpace;
  BuildContext? context;
  String? iconUrl;
  Color? buttonColor;
  String? buttonTitle;
  GestureTapCallback? onTap;
  BuildSocialMediaButtonWidget({
    required this.size,
    required this.widthSpace,
    required this.context,
    required this.iconUrl,
    required this.buttonColor,
    required this.buttonTitle,
    required this.onTap,
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height * 0.065,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              iconUrl!,
              fit: BoxFit.cover,
            ),
            SizedBox(width: widthSpace),
            Text(
              buttonTitle!,
              style: GoogleFonts.nunito(
                fontSize: size.height * 0.020,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
