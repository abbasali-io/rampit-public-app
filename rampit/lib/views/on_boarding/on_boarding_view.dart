library on_boarding_view;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/bottom_cruve/bottom_cruve_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'on_boarding_view_model.dart';

part 'on_boarding_mobile.dart';
part 'on_boarding_tablet.dart';
part 'on_boarding_desktop.dart';

class OnBoardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      viewModelBuilder: () => OnBoardingViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, OnBoardingViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _OnBoardingMobile(viewModel),
          desktop: _OnBoardingDesktop(viewModel),
          tablet: _OnBoardingTablet(viewModel),  
        );
      }
    );
  }
}
