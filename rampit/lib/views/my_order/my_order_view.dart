library my_order_view;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/widgets/dumb_widgets/order_container/order_container_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'my_order_view_model.dart';

part 'my_order_mobile.dart';
part 'my_order_tablet.dart';
part 'my_order_desktop.dart';

class MyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyOrderViewModel>.reactive(
      viewModelBuilder: () => MyOrderViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, MyOrderViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _MyOrderMobile(viewModel),
          desktop: _MyOrderDesktop(viewModel),
          tablet: _MyOrderTablet(viewModel),  
        );
      }
    );
  }
}
