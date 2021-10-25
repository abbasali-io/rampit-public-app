library rating_view;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'rating_view_model.dart';

part 'rating_mobile.dart';
part 'rating_tablet.dart';
part 'rating_desktop.dart';

class RatingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RatingViewModel>.reactive(
      viewModelBuilder: () => RatingViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, RatingViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _RatingMobile(viewModel),
          desktop: _RatingDesktop(viewModel),
          tablet: _RatingTablet(viewModel),  
        );
      }
    );
  }
}
