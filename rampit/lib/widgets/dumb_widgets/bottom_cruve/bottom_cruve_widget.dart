library bottom_cruve_widget;

import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'bottom_cruve_mobile.dart';
part 'bottom_cruve_tablet.dart';
part 'bottom_cruve_desktop.dart';

class BottomCruveWidget extends StatelessWidget {
  final Size size;
  final int splashLength;
  final BuildContext context;
  final int currentPage;
  final PageController controller;
  final Function goToRegistrationPage;
  final Function goTonextPage;
  BottomCruveWidget({
    @required this.context,
    @required this.size,
    @required this.currentPage,
    @required this.controller,
    @required this.goToRegistrationPage,
    @required this.goTonextPage,
    @required this.splashLength,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _BottomCruveMobile(context: context,controller: controller, currentPage: currentPage,goToRegistrationPage: goToRegistrationPage,goTonextPage: goTonextPage,size:size,splashLength: splashLength),
      desktop: _BottomCruveDesktop(),
      tablet: _BottomCruveTablet(),
    );
  }
}
