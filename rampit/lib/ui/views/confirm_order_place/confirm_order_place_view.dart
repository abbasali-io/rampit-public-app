// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/smart_widgets/my_cart_bottom_nav/my_cart_bottom_nav_widget.dart';
import 'package:stacked/stacked.dart';

import './confirm_order_place_view_model.dart';

class ConfirmOrderPlaceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ConfirmOrderPlaceViewModel>.reactive(
      viewModelBuilder: () => ConfirmOrderPlaceViewModel(),
      onModelReady: (ConfirmOrderPlaceViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ConfirmOrderPlaceViewModel model,
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
              centerTitle: false,
              title: Container(
                height: 10.h,
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: MyStyles.themeData().primaryColorLight,
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.circular(7),
                                right: Radius.circular(7)),
                            border: Border.all(style: BorderStyle.solid)),
                        child: Center(
                            child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 4.w,
                            ),
                            Container(
                              child: FaIcon(
                                FontAwesomeIcons.mapMarkerAlt,
                                size: 3.5.sp,
                                color: Color.fromRGBO(15, 71, 117, 1),
                              ),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Container(
                              width: 70.w,
                              child: Center(
                                child: Text(
                                  'B-11-03, Residensi Kepongmas',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              backgroundColor: MyStyles.themeData().backgroundColor,
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: MyStyles.themeData().highlightColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 3.5.sp),
            ),
            bottomNavigationBar: BottomAppBar(
              elevation: 0,
              color: MyStyles.themeData().backgroundColor,
              child: Container(
                  width: 100.w,
                  height: 15.h,
                  child: MyCartBottomNavWidget(
                    btnText: 'Next',
                    tPrice: '18.00',
                    tPriceShow: false,
                  )),
            ),
            body: SafeArea(
                child: Container(
              color: MyStyles.themeData().backgroundColor,
              padding: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
              width: 100.w,
              height: 95.h,
              child: Center(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 90.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                            border: Border.all(style: BorderStyle.solid),
                            color: Color.fromRGBO(247, 249, 250, 1),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: ListView.builder(
                            itemCount: model.radioBtnValues!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                child: ListTile(
                                  title: Text(
                                    model.radioBtnValues![index],
                                    style: TextStyle(
                                        color:
                                            MyStyles.themeData().highlightColor,
                                        fontSize: 4.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  trailing: Radio(
                                    fillColor: MaterialStateProperty.all<Color>(
                                        MyStyles.themeData().primaryColor),
                                    value: model.radioBtnValues![index],
                                    groupValue: model.selectedValue!,
                                    onChanged: (String? value) {
                                      model.setSelectedValue(value);
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                            width: 90.w,
                            child: TextFormField(
                              maxLines: 5,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.0,
                                  ),
                                ),
                                fillColor: Color.fromRGBO(247, 249, 250, 1),
                                filled: true,
                                labelText: 'Instructions',
                                labelStyle: TextStyle(
                                    color: MyStyles.themeData().highlightColor),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            )));
      },
    );
  }
}
