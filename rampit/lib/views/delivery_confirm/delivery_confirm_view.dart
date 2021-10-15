library delivery_confirm_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/colors.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'delivery_confirm_view_model.dart';

part 'delivery_confirm_mobile.dart';
part 'delivery_confirm_tablet.dart';
part 'delivery_confirm_desktop.dart';

class DeliveryConfirmView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DeliveryConfirmViewModel>.reactive(
      viewModelBuilder: () => DeliveryConfirmViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, DeliveryConfirmViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _DeliveryConfirmMobile(viewModel),
          desktop: _DeliveryConfirmDesktop(viewModel),
          tablet: _DeliveryConfirmTablet(viewModel),  
        );
      }
    );
  }
}
