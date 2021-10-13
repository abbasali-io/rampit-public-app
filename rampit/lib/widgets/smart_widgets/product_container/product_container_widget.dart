library product_container_widget;

import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'product_container_view_model.dart';

part 'product_container_mobile.dart';
part 'product_container_tablet.dart';
part 'product_container_desktop.dart';

class ProductContainerWidget extends StatelessWidget {
  final String imagePath;
  final String heading1;
  final String heading2;
  final String text;
  final String description;
  ProductContainerWidget({
    @required this.description,
    @required this.imagePath,
    @required this.heading1,
    @required this.heading2,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductContainerViewModel>.reactive(
      builder: (BuildContext context, ProductContainerViewModel viewModel,
          Widget _) {
        return ScreenTypeLayout(
          mobile: _ProductContainerMobile(
              description: description,
              viewModel: viewModel,
              heading1: this.heading1,
              heading2: this.heading2,
              imagePath: this.imagePath,
              text: this.text),
          desktop: _ProductContainerDesktop(),
          tablet: _ProductContainerTablet(),
        );
      },
      viewModelBuilder: () => ProductContainerViewModel(),
    );
  }
}
