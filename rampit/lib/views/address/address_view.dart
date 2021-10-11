library address_view;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'address_view_model.dart';

part 'address_mobile.dart';
part 'address_tablet.dart';
part 'address_desktop.dart';

class AddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddressViewModel>.reactive(
      viewModelBuilder: () => AddressViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, AddressViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _AddressMobile(viewModel),
          desktop: _AddressDesktop(viewModel),
          tablet: _AddressTablet(viewModel),  
        );
      }
    );
  }
}
