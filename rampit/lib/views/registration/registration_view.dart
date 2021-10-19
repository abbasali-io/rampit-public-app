library registration_view;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/build_social_media_button/build_social_media_button_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'registration_view_model.dart';

part 'registration_mobile.dart';
part 'registration_tablet.dart';
part 'registration_desktop.dart';

class RegistrationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewModel>.reactive(
      viewModelBuilder: () => RegistrationViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, RegistrationViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _RegistrationMobile(viewModel),
          desktop: _RegistrationDesktop(viewModel),
          tablet: _RegistrationTablet(viewModel),  
        );
      }
    );
  }
}
