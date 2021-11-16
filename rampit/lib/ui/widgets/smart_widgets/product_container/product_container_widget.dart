// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import 'product_container_widget_model.dart';

class ProductContainerWidget extends StatelessWidget {
  final String imagePath;
  final String heading1;
  final String heading2;
  final String text;
  final String description;
  ProductContainerWidget({
    required this.description,
    required this.imagePath,
    required this.heading1,
    required this.heading2,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductContainerWidgetModel>.reactive(
      viewModelBuilder: () => ProductContainerWidgetModel(),
      onModelReady: (ProductContainerWidgetModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        ProductContainerWidgetModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 50.w,
          child: InkWell(
            onTap: () {
              model.goToProductViewPage(
                  description: description,
                  imagePath: imagePath,
                  heading1: heading1 + heading2,
                  heading2: text);
            },
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 40.w,
                    height: 42.5.h,
                    decoration: BoxDecoration(
                        border: Border.all(style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imagePath),
                                  fit: BoxFit.fill)),
                        ),
                        Container(
                          width: 45.w,
                          height: 7.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  splashRadius: 5.sp,
                                  onPressed: () {
                                    model.productIncrement();
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.plus,
                                    size: 3.sp,
                                  )),
                              model.productCounter == 0
                                  ? Text('')
                                  : Container(
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2, 0, 2, 0),
                                          child: Text(
                                            model.productCounter.toString(),
                                            style: TextStyle(
                                              fontSize: 6.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                              model.productCounter == 0
                                  ? Text('')
                                  : IconButton(
                                      splashRadius: 5.sp,
                                      onPressed: () {
                                        model.productDecrement();
                                      },
                                      icon: FaIcon(
                                        FontAwesomeIcons.minus,
                                        size: 3.sp,
                                      ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 40.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Text(
                            heading1,
                            style: TextStyle(
                                color: MyStyles.themeData().highlightColor,
                                fontSize: 4.5.sp,
                                fontWeight: FontWeight.bold),
                          )),
                          Container(
                              child: Text(
                            heading2,
                            style: TextStyle(
                                color: MyStyles.themeData().highlightColor,
                                fontSize: 4.5.sp,
                                fontWeight: FontWeight.bold),
                          )),
                          Container(
                              height: 4.h,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  text,
                                  style: TextStyle(
                                    color:
                                        MyStyles.themeData().primaryColorLight,
                                    fontSize: 4.sp,
                                  ),
                                ),
                              ))
                        ],
                      )),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
