library support_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'support_view_model.dart';

part 'support_mobile.dart';
part 'support_tablet.dart';
part 'support_desktop.dart';

class SupportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupportViewModel>.reactive(
      viewModelBuilder: () => SupportViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, SupportViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _SupportMobile(viewModel),
          desktop: _SupportDesktop(viewModel),
          tablet: _SupportTablet(viewModel),  
        );
      }
    );
  }
}
