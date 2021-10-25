library track_order_view;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'track_order_view_model.dart';

part 'track_order_mobile.dart';
part 'track_order_tablet.dart';
part 'track_order_desktop.dart';

class TrackOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrackOrderViewModel>.reactive(
      viewModelBuilder: () => TrackOrderViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, TrackOrderViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _TrackOrderMobile(viewModel),
          desktop: _TrackOrderDesktop(viewModel),
          tablet: _TrackOrderTablet(viewModel),  
        );
      }
    );
  }
}
