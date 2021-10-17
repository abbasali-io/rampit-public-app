library search_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/smart_widgets/tag_container_style/tag_container_style_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'search_view_model.dart';

part 'search_mobile.dart';
part 'search_tablet.dart';
part 'search_desktop.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, SearchViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _SearchMobile(viewModel),
          desktop: _SearchDesktop(viewModel),
          tablet: _SearchTablet(viewModel),  
        );
      }
    );
  }
}
