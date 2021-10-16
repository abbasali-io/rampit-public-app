library check_out_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_item/my_cart_item_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'check_out_view_model.dart';

part 'check_out_mobile.dart';
part 'check_out_tablet.dart';
part 'check_out_desktop.dart';

class CheckOutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CheckOutViewModel>.reactive(
      viewModelBuilder: () => CheckOutViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, CheckOutViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _CheckOutMobile(viewModel),
          desktop: _CheckOutDesktop(viewModel),
          tablet: _CheckOutTablet(viewModel),  
        );
      }
    );
  }
}
