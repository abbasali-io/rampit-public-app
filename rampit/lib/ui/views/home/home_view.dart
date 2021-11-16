// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/smart_widgets/category_circle_box/category_circle_box_widget.dart';
import 'package:rampit/ui/widgets/smart_widgets/product_container/product_container_widget.dart';
import 'package:stacked/stacked.dart';

import './home_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (HomeViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
        return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: MyStyles.themeData().backgroundColor,
        child: const FaIcon(FontAwesomeIcons.shoppingCart, color: Colors.black),
        onPressed: () {
          model.navigateToPage(pageIndex: 5);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        unselectedItemColor: MyStyles.themeData().highlightColor,
        selectedItemColor: MyStyles.themeData().primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 40,
        onTap: (index) {
          model.navigateToPage(pageIndex: index);
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingBag), label: 'Category'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAlt), label: 'User'),
        ],
        backgroundColor: MyStyles.themeData().backgroundColor,
        // shape: CircularNotchedRectangle(),
        // notchMargin: 10.0,
        // child: new Row(
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget>[
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.home),
        //       onPressed: () {
        //         this.viewModel.navigateToPage(pageName: 'Home');
        //       },
        //     ),
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.shoppingBag),
        //       onPressed: () {},
        //     ),
        //     SizedBox(
        //       width: 10.w,
        //     ),
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.search),
        //       onPressed: () {},
        //     ),
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.userAlt),
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 100.w,
            child: Column(
              children: [
                Container(
                  width: 90.w,
                  height: 10.h,
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          width: 70.w,
                          height: 40,
                          decoration: BoxDecoration(
                              color: MyStyles.themeData().primaryColorLight,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(7),
                                  right: Radius.circular(0)),
                              border: Border.all(style: BorderStyle.solid)),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapMarkerAlt,
                                size: 5.sp,
                                color: Color.fromRGBO(15, 71, 117, 1),
                              ),
                              Text(
                                'B-11-03, Residensi Kepongmas',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          )),
                        ),
                        Container(
                          width: 20.w,
                          height: 40,
                          decoration: BoxDecoration(
                              color: MyStyles.themeData().highlightColor,
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(0),
                                  right: Radius.circular(7)),
                              border: Border.all(style: BorderStyle.solid)),
                          child: Center(
                            child: Text(
                              '15:30 Mins',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: MyStyles.themeData().backgroundColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: MyStyles.themeData().highlightColor,
                ),
                Container(
                  width: 90.w,
                  height: 13.h,
                  child: Center(
                    child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryCircleBoxWidget(
                              catName: 'Milk',
                              catImagePath: 'assets/icons/milk.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Fruits',
                              catImagePath: 'assets/icons/fruits.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Drinks',
                              catImagePath: 'assets/icons/drinks.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Meat',
                              catImagePath: 'assets/icons/meat.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Vagetables',
                              catImagePath: 'assets/icons/vagetables.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Milk',
                              catImagePath: 'assets/icons/milk.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Fruits',
                              catImagePath: 'assets/icons/fruits.png'),
                          CategoryCircleBoxWidget(
                              catName: 'Drinks',
                              catImagePath: 'assets/icons/drinks.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 22.h,
                  child: Center(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 90.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                            color: MyStyles.themeData().highlightColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Container(
                            width: 80.w,
                            height: 15.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Opening times',
                                    style: TextStyle(
                                        color: MyStyles.themeData()
                                            .backgroundColor,
                                        fontSize: 5.sp),
                                  ),
                                ),
                                Container(
                                  height: 13.w,
                                  child: ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (rect) => LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: const <Color>[
                                        Color.fromRGBO(255, 192, 0, 1),
                                        Color.fromRGBO(214, 242, 255, 1)
                                      ],
                                    ).createShader(rect),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '8am - 10pm',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: MyStyles.themeData()
                                                .backgroundColor,
                                            fontSize: 7.sp),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Every Day',
                                    style: TextStyle(
                                        color: MyStyles.themeData()
                                            .backgroundColor,
                                        fontSize: 5.sp),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 10.h,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Papular',
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.sp)),
                  ),
                ),
                Container(
                  width: 90.w,
                  height: 60.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ProductContainerWidget(
                        description:
                            'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.',
                        heading1: 'KARMA DRINKS',
                        heading2: 'ORGANIC ORANGE',
                        imagePath: 'assets/images/karma-drinks.png',
                        text: 'RM 8.00 each',
                      ),
                      ProductContainerWidget(
                        description:
                            'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.',
                        heading1: 'PROPER CRIPS CIDER',
                        heading2: 'VINEGAR 140G',
                        imagePath: 'assets/images/crisp-cider.png',
                        text: 'RM 10.00 each',
                      ),
                      ProductContainerWidget(
                        description:
                            'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.',
                        heading1: 'KARMA DRINKS',
                        heading2: 'ORGANIC ORANGE',
                        imagePath: 'assets/images/karma-drinks.png',
                        text: 'RM 8.00 each',
                      ),
                      ProductContainerWidget(
                        description:
                            'Refreshing, revitalising and so scrumptious you could slurp em all back in one go, our latest range of do gooding juices taste as fruity as they make you feel.',
                        heading1: 'PROPER CRIPS CIDER',
                        heading2: 'VINEGAR 140G',
                        imagePath: 'assets/images/crisp-cider.png',
                        text: 'RM 10.00 each',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
      },
    );
  }
}
