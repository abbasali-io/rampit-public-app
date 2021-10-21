library reciept_info_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'reciept_info_mobile.dart';
part 'reciept_info_tablet.dart';
part 'reciept_info_desktop.dart';

class RecieptInfoWidget extends StatelessWidget {
  final Size size;
  final String title;
  final String amount;
  final fontWeight;
  RecieptInfoWidget({
  @required this.size,
  @required this.title,
  @required this.amount,
  FontWeight this.fontWeight,
});
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _RecieptInfoMobile(amount: amount,size: size,title: title,fontWeight: fontWeight,),
      desktop: _RecieptInfoDesktop(),
      tablet: _RecieptInfoTablet(),
    );
  }
}
