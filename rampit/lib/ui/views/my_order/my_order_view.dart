// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/ui/widgets/dumb_widgets/order_container/order_container_widget.dart';
import 'package:stacked/stacked.dart';

import './my_order_view_model.dart';

class MyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyOrderViewModel>.reactive(
      viewModelBuilder: () => MyOrderViewModel(),
      onModelReady: (MyOrderViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        MyOrderViewModel model,
        Widget? child,
      ) {
        var size = MediaQuery.of(context).size;
        return SafeArea(
          child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: FloatingActionButton(
              elevation: 10,
              backgroundColor: MyStyles.themeData().backgroundColor,
              child: const FaIcon(FontAwesomeIcons.shoppingCart,
                  color: Colors.black),
              onPressed: () {
                model.navigateToPage(pageIndex: 5);
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: 1,
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
                    icon: FaIcon(FontAwesomeIcons.shoppingBag),
                    label: 'Category'),
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
            backgroundColor: MyStyles.themeData().backgroundColor,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: AppbarWidget(
                title: 'My Orders',
                leading: true,
                action: false,
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.055,
                  color: Color(0xffEFF2EB),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Order(s) in progress',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.nunito(
                            fontSize: size.height * 0.024,
                            fontWeight: FontWeight.w700,
                            color: MyStyles.themeData().highlightColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      height: size.height / 3.7,
                      color: Colors.transparent,
                      child: PageView.builder(
                          controller: model.controller,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            final orderNo = '128235423701605';
                            final bazarAddress = 'Home (Bam Villa Condominum)';
                            final deliveryAddressName =
                                'Home (Bam Villa Condominum)';
                            final totalPrice = 'RM 54.00';
                            final docId = '1234';
                            final orderConfirmedDate = '2 Oct';
                            final orderConfirmedTime = '11:35 a.m';
                            return GestureDetector(
                              onTap:() => model.goToOrderDetail(docId),
                              child: OrderContainerWidget(
                                  categoryImage: model.categoryImage!,
                                  size: size,
                                  context: context,
                                  docId: docId,
                                  orderNo: orderNo,
                                  totalPrice: totalPrice,
                                  orderConfirmedDate: orderConfirmedDate,
                                  orderConfirmedTime: orderConfirmedTime,
                                  bazarAddress: bazarAddress,
                                  deliveryAddressName: deliveryAddressName),
                            );
                          },
                          onPageChanged: (value) {
                            model.setCurrentOrderContainer(value);
                          }),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => _buildDots(index: index, size: size, model: model),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.020,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: size.height * 0.055,
                  color: Color(0xffEFF2EB),
                  child: Center(
                    child: Text(
                      'Past Order(s)',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: GoogleFonts.nunito(
                        fontSize: size.height * 0.024,
                        fontWeight: FontWeight.w700,
                        color: MyStyles.themeData().highlightColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: size.height / 3.7,
                  color: Colors.transparent,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      final orderNo = '128235423701605';
                      final bazarAddress = 'Home (Bam Villa Condominum)';
                      final deliveryAddressName = 'Home (Bam Villa Condominum)';
                      final totalPrice = 'RM 54.00';
                      final docId = '1234';
                      final deliveryDate = '2 Oct';
                      final deliveryTime = '11:35 a.m';
                      return pastOrderContainer(
                          model: model,
                          categoryImage: model.categoryImage!,
                          size: size,
                          context: context,
                          docId: docId,
                          orderNo: orderNo,
                          totalPrice: totalPrice,
                          deliveryDate: deliveryDate,
                          deliveryTime: deliveryTime,
                          bazarAddress: bazarAddress,
                          deliveryAddressName: deliveryAddressName);
                    },
                  ),
                ),
              ],
            ),
            // bottomNavigationBar: bottomNavigation(
            //   context: context,
            //   selectedIndex: 1,
            // ),
            // floatingActionButton: BottomScanFab(
            //   isFab: false,
            // ),
            // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          ),
        );
      },
    );
  }

  Widget pastOrderContainer(
      {required Size size,
      required BuildContext context,
      required MyOrderViewModel model,
      required String docId,
      required String orderNo,
      required String totalPrice,
      required String deliveryDate,
      required String deliveryTime,
      required String bazarAddress,
      required String categoryImage,
      required String deliveryAddressName}) {
    return Container(
      width: size.width * 0.343,
      height: size.height / 4.5,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
        color: MyStyles.themeData().backgroundColor,
      ),
      child: Column(
        children: [
          ListTile(
            autofocus: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: 0),
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: Image.asset(
              categoryImage,
              height: size.height * 0.045,
            ),
            tileColor: Colors.transparent,
            onTap: null,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Meat',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().highlightColor,
                      fontSize: size.height * 0.020,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Delivered',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColor,
                      fontSize: size.height * 0.018,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  deliveryDate + ' , ' + deliveryTime,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColorLight,
                      fontSize: size.height * 0.018,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  totalPrice,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColorLight,
                      fontSize: size.height * 0.018,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(
            color: Color(0xffEFF2EB),
            thickness: 2,
          ),
          SizedBox(
            height: size.height * 0.010,
          ),
          // Row(
          //   children: [
          //     Icon(
          //       Icons.location_pin,
          //       color: MyStyles.themeData().primaryColor,
          //       size: size.height * 0.030,
          //     ),
          //     SizedBox(width: size.height * 0.030),
          //     Text(
          //       bazarAddress,
          //       overflow: TextOverflow.ellipsis,
          //       maxLines: 1,
          //       style: GoogleFonts.nunito(
          //           color: MyStyles.themeData().highlightColor,
          //           fontSize: size.height * 0.020,
          //           fontWeight: FontWeight.bold),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: size.height * 0.010,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.send,
                color: MyStyles.themeData().primaryColor,
                size: size.height * 0.030,
              ),
              SizedBox(width: size.height * 0.030),
              Text(
                deliveryAddressName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.nunito(
                    color: MyStyles.themeData().highlightColor,
                    fontSize: size.height * 0.020,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => model.goToRating(docId),
                child: Text(
                  'Rate Now',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColor,
                      fontSize: size.height * 0.020,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AnimatedContainer _buildDots({required int? index, required Size size, required MyOrderViewModel model }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: MyStyles.themeData().primaryColor,
      ),
      margin: const EdgeInsets.only(right: 5),
      height: size.height * 0.010,
      curve: Curves.easeIn,
      width: model.currentOrderContainer == index
          ? size.width * 0.050
          : size.width * 0.020,
    );
  }
}
