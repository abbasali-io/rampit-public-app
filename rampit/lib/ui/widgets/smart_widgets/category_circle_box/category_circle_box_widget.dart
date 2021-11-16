// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/app/app.router.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import 'category_circle_box_widget_model.dart';

class CategoryCircleBoxWidget extends StatelessWidget {
  String catName;
  String catImagePath;
  CategoryCircleBoxWidget(
      {required this.catName,
      required this.catImagePath});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryCircleBoxWidgetModel>.reactive(
      viewModelBuilder: () => CategoryCircleBoxWidgetModel(),
      onModelReady: (CategoryCircleBoxWidgetModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        CategoryCircleBoxWidgetModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
          BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height),
          designSize: Size(100, 100),
        );
        return InkWell(
          onTap: () {
            model.nav.navigateTo(Routes.categoryView);
          },
          child: Container(
            width: 20.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: MyStyles.themeData().highlightColor,
                    border: Border.all(style: BorderStyle.solid, width: 0.3.w),
                  ),
                  child: CircleAvatar(
                    radius: 7.w,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child:
                          Image.asset(catImagePath, fit: BoxFit.contain),
                    ),
                    backgroundColor: MyStyles.themeData().primaryColorLight,
                  ),
                ),
                Container(
                  child: Text(
                    catName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
