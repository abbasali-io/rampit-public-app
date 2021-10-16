library my_cart_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:rampit/widgets/smart_widgets/my_cart_item/my_cart_item_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'my_cart_view_model.dart';

part 'my_cart_mobile.dart';
part 'my_cart_tablet.dart';
part 'my_cart_desktop.dart';

class MyCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCartViewModel>.reactive(
      viewModelBuilder: () => MyCartViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, MyCartViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _MyCartMobile(viewModel),
          desktop: _MyCartDesktop(viewModel),
          tablet: _MyCartTablet(viewModel),  
        );
      }
    );
  }
}
