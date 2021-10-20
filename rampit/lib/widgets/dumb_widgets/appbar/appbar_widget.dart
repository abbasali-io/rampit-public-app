library appbar_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

part 'appbar_mobile.dart';
part 'appbar_tablet.dart';
part 'appbar_desktop.dart';

class AppbarWidget extends StatelessWidget {
  final bool leading;
  final bool action;
  final String title;

  AppbarWidget({
    this.leading = true,
    this.title,
    this.action = true,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _AppbarMobile(action: action,leading: leading,title: title),
      desktop: _AppbarDesktop(),
      tablet: _AppbarTablet(),
    );
  }
}
