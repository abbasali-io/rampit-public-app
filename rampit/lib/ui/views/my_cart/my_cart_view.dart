// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, avoid_print, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:rampit/ui/widgets/smart_widgets/my_cart_item/my_cart_item_widget.dart';
import 'package:stacked/stacked.dart';

import './my_cart_view_model.dart';

class MyCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCartViewModel>.reactive(
      viewModelBuilder: () => MyCartViewModel(),
      onModelReady: (MyCartViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MyCartViewModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
          BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height),
          designSize: const Size(100, 100),
        );
        return Scaffold(
            appBar: AppBar(
              foregroundColor: MyStyles.themeData().highlightColor,
              centerTitle: true,
              title: const Text('My Cart'),
              backgroundColor: MyStyles.themeData().backgroundColor,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: MyStyles.themeData().highlightColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp),
            ),
            bottomNavigationBar: BottomAppBar(
              elevation: 0,
              color: MyStyles.themeData().backgroundColor,
              child: Container(
                  width: 100.w,
                  height: 15.h,
                  child: MyCartBottomNavWidget(
                    btnText: 'Check Out',
                    tPrice: '18.00',
                    tPriceShow: true,
                  )
                ),
            ),
            body: SafeArea(
              child: Container(
                width: 100.w,
                height: 100.h,
                color: MyStyles.themeData().backgroundColor,
                child: Center(
                  child: Container(
                    width: 90.w,
                    height: 70.h,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Slidable(
                          actionPane: const SlidableScrollActionPane(),
                          actionExtentRatio: 0.25,
                          secondaryActions: <Widget>[
                            IconSlideAction(
                              color: const Color.fromRGBO(226, 236, 243, 1),
                              icon: FontAwesomeIcons.edit,
                              foregroundColor:
                                  MyStyles.themeData().backgroundColor,
                              onTap: () {
                                model.goToProductPage(
                                    imagePath: 'assets/images/crisp-cider.png',
                                    heading2: 'RM 10.00 each',
                                    heading1: 'PROPER CRIPS CIDER VINEGAR 140G',
                                    description:
                                        'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.');
                              },
                            ),
                            IconSlideAction(
                              color: MyStyles.themeData().primaryColorLight,
                              icon: FontAwesomeIcons.trash,
                              foregroundColor:
                                  MyStyles.themeData().primaryColor,
                              onTap: () {},
                            ),
                          ],
                          actions: [
                            IconSlideAction(
                              color: const Color.fromRGBO(226, 236, 243, 1),
                              icon: FontAwesomeIcons.edit,
                              foregroundColor:
                                  MyStyles.themeData().backgroundColor,
                              onTap: () {
                                model.goToProductPage(
                                    imagePath: 'assets/images/crisp-cider.png',
                                    heading2: 'RM 10.00 each',
                                    heading1: 'PROPER CRIPS CIDER VINEGAR 140G',
                                    description:
                                        'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.');
                              },
                            ),
                            IconSlideAction(
                              color: MyStyles.themeData().primaryColorLight,
                              icon: FontAwesomeIcons.trash,
                              foregroundColor:
                                  MyStyles.themeData().primaryColor,
                              onTap: () {},
                            ),
                          ],
                          child: MyCartItemWidget(
                            imagePath: 'assets/images/crisp-cider.png',
                            pName: 'PROPER CRISPS CIDER VINEGAR',
                            price: '18.00',
                            quantity: '2',
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
