library closed_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'closed_view_model.dart';

part 'closed_mobile.dart';
part 'closed_tablet.dart';
part 'closed_desktop.dart';

class ClosedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ClosedViewModel>.reactive(
      viewModelBuilder: () => ClosedViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ClosedViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ClosedMobile(viewModel),
          desktop: _ClosedDesktop(viewModel),
          tablet: _ClosedTablet(viewModel),  
        );
      }
    );
  }
}
