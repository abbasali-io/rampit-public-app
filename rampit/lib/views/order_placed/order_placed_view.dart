library order_placed_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'order_placed_view_model.dart';

part 'order_placed_mobile.dart';
part 'order_placed_tablet.dart';
part 'order_placed_desktop.dart';

class OrderPlacedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderPlacedViewModel>.reactive(
      viewModelBuilder: () => OrderPlacedViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, OrderPlacedViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _OrderPlacedMobile(viewModel),
          desktop: _OrderPlacedDesktop(viewModel),
          tablet: _OrderPlacedTablet(viewModel),  
        );
      }
    );
  }
}
