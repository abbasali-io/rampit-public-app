library category_circle_box_widget;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'category_circle_box_view_model.dart';

part 'category_circle_box_mobile.dart';
part 'category_circle_box_tablet.dart';
part 'category_circle_box_desktop.dart';

class CategoryCircleBoxWidget extends StatelessWidget {
  final String catName;
  final String catImagePath;
  CategoryCircleBoxWidget(
      {@required this.catName, @required this.catImagePath});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryCircleBoxViewModel>.reactive(
      builder: (BuildContext context, CategoryCircleBoxViewModel viewModel, Widget _) {
        return ScreenTypeLayout(
          mobile: _CategoryCircleBoxMobile(catName: this.catName, catImagePath: this.catImagePath,),
          desktop: _CategoryCircleBoxDesktop(),
          tablet: _CategoryCircleBoxTablet(),
        );
      },
      viewModelBuilder: () => CategoryCircleBoxViewModel(),
    );
  }
}
