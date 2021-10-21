library order_details_view;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/widgets/dumb_widgets/reciept_info/reciept_info_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'order_details_view_model.dart';

part 'order_details_mobile.dart';
part 'order_details_tablet.dart';
part 'order_details_desktop.dart';

class OrderDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderDetailsViewModel>.reactive(
      viewModelBuilder: () => OrderDetailsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, OrderDetailsViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _OrderDetailsMobile(viewModel),
          desktop: _OrderDetailsDesktop(viewModel),
          tablet: _OrderDetailsTablet(viewModel),  
        );
      }
    );
  }
}
