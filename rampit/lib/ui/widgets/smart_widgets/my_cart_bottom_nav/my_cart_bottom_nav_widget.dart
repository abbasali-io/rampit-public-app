// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import 'my_cart_bottom_nav_widget_model.dart';

class MyCartBottomNavWidget extends StatelessWidget {
  String btnText;
  String tPrice;
  bool tPriceShow;
  MyCartBottomNavWidget({
    required this.tPriceShow,
    required this.btnText,
    required this.tPrice,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCartBottomNavWidgetModel>.reactive(
      viewModelBuilder: () => MyCartBottomNavWidgetModel(),
      onModelReady: (MyCartBottomNavWidgetModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MyCartBottomNavWidgetModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
          BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height),
          designSize: const Size(100, 100),
        );
        return Column(
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tPriceShow == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                        child: Text(
                          'Total',
                          style: TextStyle(
                              color: MyStyles.themeData().highlightColor,
                              fontSize: 4.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 9.w, 0),
                        child: Text(
                          'RM ' + tPrice,
                          style: TextStyle(
                              color: MyStyles.themeData().highlightColor,
                              fontSize: 4.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                : Container(),
            Divider(
              thickness: 0.1.h,
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(30.w, 2.h, 30.w, 2.h)),
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all(
                        MyStyles.themeData().primaryColor)),
                onPressed: () => model.navigateTo(btnText),
                child: Text(
                  btnText,
                  style: TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //  Container(
            //   padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
            // ),
          ],
        );
      },
    );
  }
}
