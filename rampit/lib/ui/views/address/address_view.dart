// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, unnecessary_null_comparison, void_checks

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import './address_view_model.dart';

class AddressView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddressViewModel>.reactive(
      viewModelBuilder: () => AddressViewModel(),
      onModelReady: (AddressViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        AddressViewModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
          BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height),
          designSize: Size(100, 100),
        );
        return Scaffold(
          body: SafeArea(
            child: ListView(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        width: 100.w,
                        height: 15.h,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Enter delivery address',
                            style: TextStyle(
                                fontSize: 5.sp,
                                fontWeight: FontWeight.bold,
                                color: MyStyles.themeData().highlightColor),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 9.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        MyStyles.themeData().highlightColor)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                value: model.selectedState,
                                dropdownColor:
                                    MyStyles.themeData().backgroundColor,
                                items: model.states
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                hint: Text(
                                  "langauage langauage langauage langauage",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                onChanged: (String? value) {
                                  model.selectState(value: value);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 9.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        MyStyles.themeData().highlightColor)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: DropdownButton<String>(
                                underline: SizedBox(),
                                value: model.selectedArea,
                                dropdownColor:
                                    MyStyles.themeData().backgroundColor,
                                items: model.areas
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                hint: Text(
                                  "langauage langauage langauage langauage",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                onChanged: (String? value) {
                                  model.setSelectedArea(value!);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 9.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 87.w,
                            child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  //You can also use EdgeInsets.only
                                  horizontal: 8.0, //Change this
                                  vertical: 8.0, //Change this
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                label: Text(
                                  'Post Code',
                                  style: TextStyle(
                                    color:
                                        MyStyles.themeData().primaryColorLight,
                                  ),
                                ),
                                hoverColor: MyStyles.themeData().highlightColor,
                                focusColor: MyStyles.themeData().highlightColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(6)
                              ],
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return 'Please Enter Post Code';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 9.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 87.w,
                            child: TextFormField(
                              decoration: InputDecoration(
                                isDense: true,
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  //You can also use EdgeInsets.only
                                  horizontal: 8.0, //Change this
                                  vertical: 8.0, //Change this
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.5,
                                  ),
                                ),
                                hoverColor: MyStyles.themeData().highlightColor,
                                focusColor: MyStyles.themeData().highlightColor,
                                label: Text(
                                  'Unit Number,House Number,Street Name',
                                  style: TextStyle(
                                    color:
                                        MyStyles.themeData().primaryColorLight,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: MyStyles.themeData().highlightColor,
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(150)
                              ],
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return 'Please Enter Complete Address';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 32.h,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 30.h,
                            width: 87.w,
                            child: Image.asset(
                              'assets/images/map.jpg',
                              fit: BoxFit.fill,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color:
                                        MyStyles.themeData().highlightColor)),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 7.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 87.w,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Lable as:',
                                  style: TextStyle(
                                      color:
                                          MyStyles.themeData().highlightColor,
                                      fontSize: 3.5.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 7.h,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              width: 87.w,
                              height: 5.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation: MaterialStateProperty
                                                .all<double>(2),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(model.homeButton!)),
                                        onPressed: () {
                                          model.buttonColorChange(
                                              value: 'Home');
                                        },
                                        child: Center(
                                          child: Text(
                                            'Home',
                                            style: TextStyle(
                                                color: model.selectedAddress ==
                                                        'Home'
                                                    ? Colors.white
                                                    : MyStyles.themeData()
                                                        .highlightColor),
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation: MaterialStateProperty
                                                .all<double>(2),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(model.officeButton)),
                                        onPressed: () {
                                          model.buttonColorChange(
                                              value: 'Office');
                                        },
                                        child: Center(
                                          child: Text(
                                            'Office',
                                            style: TextStyle(
                                                color: model.selectedAddress ==
                                                        'Office'
                                                    ? Colors.white
                                                    : MyStyles.themeData()
                                                        .highlightColor),
                                          ),
                                        )),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Container(
                        width: 100.w,
                        height: 20.h,
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 87.w,
                              height: 5.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation: MaterialStateProperty
                                                .all<double>(2),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    MyStyles.themeData()
                                                        .primaryColorLight)),
                                        onPressed: () {},
                                        child: Center(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                                color: MyStyles.themeData()
                                                    .highlightColor),
                                          ),
                                        )),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            elevation: MaterialStateProperty
                                                .all<double>(2),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    MyStyles.themeData()
                                                        .primaryColor)),
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            model.goToConfirmDeliveryPage();
                                          }
                                        },
                                        child: Center(
                                          child: Text(
                                            'Next',
                                            style: TextStyle(
                                                color: MyStyles.themeData()
                                                    .backgroundColor),
                                          ),
                                        )),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
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
