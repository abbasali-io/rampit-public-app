library my_cart_bottom_nav_widget;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'my_cart_bottom_nav_view_model.dart';

part 'my_cart_bottom_nav_mobile.dart';
part 'my_cart_bottom_nav_tablet.dart';
part 'my_cart_bottom_nav_desktop.dart';

class MyCartBottomNavWidget extends StatelessWidget {
  final String btnText;
  final String tPrice;
  MyCartBottomNavWidget({
    @required this.btnText,
    @required this.tPrice,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCartBottomNavViewModel>.reactive(
      builder: (BuildContext context, MyCartBottomNavViewModel viewModel, Widget _) {
        return ScreenTypeLayout(
          mobile: _MyCartBottomNavMobile(viewModel: viewModel, btnText: btnText,tPrice: tPrice,),
          desktop: _MyCartBottomNavDesktop(),
          tablet: _MyCartBottomNavTablet(),
        );
      },
      viewModelBuilder: () => MyCartBottomNavViewModel(),
    );
  }
}
