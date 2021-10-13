library tag_container_style_widget;

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'tag_container_style_view_model.dart';

part 'tag_container_style_mobile.dart';
part 'tag_container_style_tablet.dart';
part 'tag_container_style_desktop.dart';

class TagContainerStyleWidget extends StatelessWidget {
  final String tagName;
  final bool tagActive;
  TagContainerStyleWidget({
    @required this.tagName,
    @required this.tagActive
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TagContainerStyleViewModel>.reactive(
      builder: (BuildContext context, TagContainerStyleViewModel viewModel,
          Widget _) {
        return ScreenTypeLayout(
          mobile: _TagContainerStyleMobile(
            tagName: this.tagName,
            viewModel: viewModel,
            tagActive: this.tagActive,
          ),
          desktop: _TagContainerStyleDesktop(),
          tablet: _TagContainerStyleTablet(),
        );
      },
      viewModelBuilder: () => TagContainerStyleViewModel(),
    );
  }
}
