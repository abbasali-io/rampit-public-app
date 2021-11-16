// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/smart_widgets/product_container/product_container_widget.dart';
import 'package:rampit/ui/widgets/smart_widgets/tag_container_style/tag_container_style_widget.dart';
import 'package:stacked/stacked.dart';

import './category_view_model.dart';

class CategoryView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoryViewModel>.reactive(
      viewModelBuilder: () => CategoryViewModel(),
      onModelReady: (CategoryViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        CategoryViewModel model,
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
          title: const Text('Categories'),
          backgroundColor: MyStyles.themeData().backgroundColor,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: MyStyles.themeData().highlightColor,
              fontWeight: FontWeight.bold,
              fontSize: 5.sp),
        ),
        body: SafeArea(
          child: Container(
            width: 100.w,
            height: 100.h,
            color: MyStyles.themeData().backgroundColor,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 5.h,
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: model.catTagList!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: () {
                                      model.selectTagUpdateValue(
                                          selectedTag:
                                              model.catTagList![index]);
                                    },
                                    child: TagContainerStyleWidget(
                                        tagActive: model.activeTagStatus(
                                                tagName: model.catTagList![index]),
                                        tagName:
                                            model.catTagList![index]),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.2.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 70.h,
                      child: GridView.builder(
                        padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.49,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            splashColor: MyStyles.themeData().primaryColor,
                            onTap: () {},
                            child: ProductContainerWidget(
                              description:
                                  'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.',
                              heading1: 'KARMA DRINKS',
                              heading2: 'ORGANIC ORANGE',
                              imagePath: 'assets/images/karma-drinks.png',
                              text: 'RM 8.00 each',
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ]),
          ),
        ));
      },
    );
  }
}
