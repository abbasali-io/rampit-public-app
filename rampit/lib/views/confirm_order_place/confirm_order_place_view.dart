library confirm_order_place_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'confirm_order_place_view_model.dart';

part 'confirm_order_place_mobile.dart';
part 'confirm_order_place_tablet.dart';
part 'confirm_order_place_desktop.dart';

class ConfirmOrderPlaceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmOrderPlaceViewModel>.reactive(
      viewModelBuilder: () => ConfirmOrderPlaceViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ConfirmOrderPlaceViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ConfirmOrderPlaceMobile(viewModel),
          desktop: _ConfirmOrderPlaceDesktop(viewModel),
          tablet: _ConfirmOrderPlaceTablet(viewModel),  
        );
      }
    );
  }
}
