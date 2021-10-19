library build_social_media_button_widget;

import 'dart:core';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'build_social_media_button_mobile.dart';
part 'build_social_media_button_tablet.dart';
part 'build_social_media_button_desktop.dart';

class BuildSocialMediaButtonWidget extends StatelessWidget {
  final Size size;
  final double widthSpace;
  final BuildContext context;
  final String iconUrl;
  final Color buttonColor;
  final String buttonTitle;
  final GestureTapCallback onTap;
  BuildSocialMediaButtonWidget({
    @required this.size,
    @required this.widthSpace,
    @required this.context,
    @required this.iconUrl,
    @required this.buttonColor,
    @required this.buttonTitle,
    @required this.onTap,
  });
  
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _BuildSocialMediaButtonMobile(buttonColor: buttonColor,buttonTitle: buttonTitle,context: context,iconUrl: iconUrl,onTap: onTap,size: size,widthSpace: widthSpace,),
      desktop: _BuildSocialMediaButtonDesktop(),
      tablet: _BuildSocialMediaButtonTablet(),
    );
  }
}
