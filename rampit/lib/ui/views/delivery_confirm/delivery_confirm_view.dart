// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import './delivery_confirm_view_model.dart';

class DeliveryConfirmView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DeliveryConfirmViewModel>.reactive(
      viewModelBuilder: () => DeliveryConfirmViewModel(),
      onModelReady: (DeliveryConfirmViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        DeliveryConfirmViewModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
          BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height),
          designSize: Size(100, 100),
        );
        return Scaffold(
          appBar: AppBar(
            foregroundColor: MyStyles.themeData().highlightColor,
            centerTitle: true,
            title: Text('Delivery Options'),
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
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(5.w, 5.h, 0.w, 5.h),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h)),
                        elevation: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(
                            MyStyles.themeData().primaryColorLight)),
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 4.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h)),
                        elevation: MaterialStateProperty.all(5),
                        backgroundColor: MaterialStateProperty.all(
                            MyStyles.themeData().primaryColor)),
                    onPressed: () {
                      model.goToHomePage();
                    },
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                          fontSize: 4.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
              child: Container(
            color: MyStyles.themeData().backgroundColor,
            width: 100.w,
            height: 100.h,
            child: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
                width: 90.w,
                height: 100.h,
                child: ListView.builder(
                  itemCount: model.radioBtnValues!.length,
                  itemBuilder: (BuildContext context, int index) {
                    var mints = int.parse(model.radioBtnValues![index]);
                    return ListTile(
                      subtitle: Text(
                        'Max ' + mints.toString() + ' Items per order',
                        style: TextStyle(
                            color: MyStyles.themeData().primaryColor,
                            fontSize: 3.5.sp),
                      ),
                      //leading: Text('Max '+ mints.toString() +' Items per order'),
                      title: Text(
                        model.radioBtnValues![index] + ' Minutes Delivery',
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 5.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: Radio(
                        activeColor: MyStyles.themeData().primaryColor,
                        fillColor: MaterialStateProperty.all<Color>(
                            MyStyles.themeData().primaryColor),
                        value: model.radioBtnValues![index],
                        groupValue: model.selectedValue,
                        onChanged: (String? value) {
                          model.setSelectedValue(value!);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          )),
        );
      },
    );
  }
}
