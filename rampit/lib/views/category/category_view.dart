library category_view;

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'category_view_model.dart';

part 'category_mobile.dart';
part 'category_tablet.dart';
part 'category_desktop.dart';

class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(
      viewModelBuilder: () => CategoryViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, CategoryViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _CategoryMobile(viewModel),
          desktop: _CategoryDesktop(viewModel),
          tablet: _CategoryTablet(viewModel),  
        );
      }
    );
  }
}
