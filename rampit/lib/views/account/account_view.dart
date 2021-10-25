library account_view;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/widgets/dumb_widgets/inner_shadow/inner_shadow_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'account_view_model.dart';

part 'account_mobile.dart';
part 'account_tablet.dart';
part 'account_desktop.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountViewModel>.reactive(
      viewModelBuilder: () => AccountViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, AccountViewModel viewModel, Widget child) {
        return ScreenTypeLayout(
          mobile: _AccountMobile(viewModel),
          desktop: _AccountDesktop(viewModel),
          tablet: _AccountTablet(viewModel),  
        );
      }
    );
  }
}
