// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/app/app.router.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/ui/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:stacked/stacked.dart';

import './support_view_model.dart';

class SupportView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SupportViewModel>.reactive(
      viewModelBuilder: () => SupportViewModel(),
      onModelReady: (SupportViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        SupportViewModel model,
        Widget? child,
      ) {
       var size = MediaQuery.of(context).size;
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: const Size(100, 100),
    );
    return Scaffold(
      backgroundColor: MyStyles.themeData().backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppbarWidget(
          title: 'Support',
          leading: true,
          action: false,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: MyStyles.themeData().backgroundColor,
        child: Container(
            width: 100.w,
            height: 15.h,
            child: MyCartBottomNavWidget(
              btnText: 'Submit',
              tPrice: '',
              tPriceShow: false,
            )),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/support.png',
                fit: BoxFit.contain,
              ),
            ),
            GestureDetector(
              onTap: () {
                model.nav.navigateTo(Routes.faqView);
              },
              child: Container(
                height: size.height * 0.060,
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(vertical: 20)
                    .copyWith(left: 250),
                decoration: BoxDecoration(
                  color: MyStyles.themeData().primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'FAQ',
                    style: GoogleFonts.nunito(
                        color: MyStyles.themeData().backgroundColor,
                        fontSize: size.height * 0.026,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Text(
              'Write us your queries',
              style: GoogleFonts.nunito(
                color: MyStyles.themeData().highlightColor,
                fontSize: size.height * 0.026,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: size.height * 0.010,
            ),
            Text(
              'Your words means alot to us',
              style: GoogleFonts.nunito(
                color: MyStyles.themeData().highlightColor,
                fontSize: size.height * 0.026,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: size.height / 5.5,
              margin: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12,
                    offset: Offset(4, 4),
                    color: Color(0x99D1CDC7),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: TextField(
                minLines: 10,
                maxLines: 15,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: 'Write your queries here..',
                  hintStyle: GoogleFonts.nunito(
                      fontSize: size.height * 0.022,
                      color: MyStyles.themeData().primaryColorLight,
                      fontWeight: FontWeight.w700),
                  filled: true,
                  fillColor: MyStyles.themeData().backgroundColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
      },
    );
  }
}
