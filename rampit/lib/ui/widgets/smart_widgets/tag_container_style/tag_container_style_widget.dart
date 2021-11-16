// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

import 'tag_container_style_widget_model.dart';

class TagContainerStyleWidget extends StatelessWidget {
  final String tagName;
  final bool tagActive;
  TagContainerStyleWidget({
    required this.tagName,
    required this.tagActive
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TagContainerStyleWidgetModel>.reactive(
      viewModelBuilder: () => TagContainerStyleWidgetModel(),
      onModelReady: (TagContainerStyleWidgetModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        TagContainerStyleWidgetModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: const Size(100, 100),
    );
    return Container(
      decoration: BoxDecoration(
          color: tagActive == true? MyStyles.themeData().highlightColor:MyStyles.themeData().primaryColorLight,
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.fromLTRB(3.w, 0.h, 3.w, 0.h),
      child: Center(
        child: Text(
          tagName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 4.sp, color: tagActive == true? MyStyles.themeData().backgroundColor:MyStyles.themeData().highlightColor,),
        ),
      ),
    );
      },
    );
  }
}
