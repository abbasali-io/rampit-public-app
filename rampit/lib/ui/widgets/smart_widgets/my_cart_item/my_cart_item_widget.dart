// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import 'my_cart_item_widget_model.dart';

class MyCartItemWidget extends StatelessWidget {
  final String imagePath;
  final String price;
  final String pName;
  final String quantity;
  MyCartItemWidget({
    required this.quantity,
    required this.imagePath,
    required this.price,
    required this.pName,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyCartItemWidgetModel>.reactive(
      viewModelBuilder: () => MyCartItemWidgetModel(),
      onModelReady: (MyCartItemWidgetModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MyCartItemWidgetModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: const Size(100, 100),
    );
    return Center(
      child: Container(
          width: 90.w,
          height: 15.h,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
                leading: Container(
                  width: 15.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.contain)),
                ),
                trailing: Container(
                  child: Text(
                    'RM ' + price,
                    style: TextStyle(
                        color: MyStyles.themeData().highlightColor,
                        fontSize: 4.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Text(
                        quantity,
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      child: Text(
                        '*',
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      width: 33.w,
                      child: Text(
                        pName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          )),
    );
      },
    );
  }
}
