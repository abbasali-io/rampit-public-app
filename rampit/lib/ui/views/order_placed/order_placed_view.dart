// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import './order_placed_view_model.dart';

class OrderPlacedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderPlacedViewModel>.reactive(
      viewModelBuilder: () => OrderPlacedViewModel(),
      onModelReady: (OrderPlacedViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OrderPlacedViewModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: const Size(100, 100),
    );
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 6,
        backgroundColor: MyStyles.themeData().primaryColor,
        child: FaIcon(FontAwesomeIcons.times,
            color: MyStyles.themeData().backgroundColor),
        onPressed: () {
          model.goToHomePage();
        },
      ),
      appBar: AppBar(
        foregroundColor: MyStyles.themeData().highlightColor,
        centerTitle: true,
        title: const Text('Order Placed'),
        backgroundColor: MyStyles.themeData().backgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: MyStyles.themeData().highlightColor,
            fontWeight: FontWeight.bold,
            fontSize: 5.sp),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 5.h,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100.w,
                    height: 40.h,
                    child: Center(
                      child: Container(
                        width: 90.w,
                        height: 40.h,
                        child: Image.asset('assets/images/confirmOrder.png',
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 10.h,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Order Placed Succesfully!',
                          style: TextStyle(
                              fontSize: 6.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Thanks for choosing us for \ndelivering your needs.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 100.w,
                    child: Center(
                      child: Container(
                        child: Text(
                          'You can check your order status in my order \nsection.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
      },
    );
  }
}
