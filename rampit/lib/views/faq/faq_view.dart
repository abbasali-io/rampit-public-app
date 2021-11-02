library faq_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'faq_view_model.dart';

part 'faq_mobile.dart';
part 'faq_tablet.dart';
part 'faq_desktop.dart';

class FaqView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FaqViewModel>.reactive(
      viewModelBuilder: () => FaqViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, FaqViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _FaqMobile(viewModel),
          desktop: _FaqDesktop(viewModel),
          tablet: _FaqTablet(viewModel),  
        );
      }
    );
  }
}
