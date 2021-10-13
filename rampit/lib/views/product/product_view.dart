library product_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'product_view_model.dart';

part 'product_mobile.dart';
part 'product_tablet.dart';
part 'product_desktop.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      viewModelBuilder: () => ProductViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, ProductViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _ProductMobile(viewModel: viewModel),
          desktop: _ProductDesktop(viewModel),
          tablet: _ProductTablet(viewModel),  
        );
      }
    );
  }
}
