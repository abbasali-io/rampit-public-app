library my_cart_item_widget;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'my_cart_item_view_model.dart';

part 'my_cart_item_mobile.dart';
part 'my_cart_item_tablet.dart';
part 'my_cart_item_desktop.dart';

class MyCartItemWidget extends StatelessWidget {
  final String imagePath;
  final String price;
  final String pName;
  final String quantity;
  MyCartItemWidget({
    @required this.quantity,
    @required this.imagePath,
    @required this.price,
    @required this.pName,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCartItemViewModel>.reactive(
      builder: (BuildContext context, MyCartItemViewModel viewModel, Widget _) {
        return ScreenTypeLayout(
          mobile: _MyCartItemMobile(imagePath: imagePath,pName: pName,price: price,quantity: quantity,viewModel: viewModel,),
          desktop: _MyCartItemDesktop(),
          tablet: _MyCartItemTablet(),
        );
      },
      viewModelBuilder: () => MyCartItemViewModel(),
    );
  }
}
