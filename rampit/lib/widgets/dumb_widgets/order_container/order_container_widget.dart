library order_container_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

part 'order_container_mobile.dart';
part 'order_container_tablet.dart';
part 'order_container_desktop.dart';

class OrderContainerWidget extends StatelessWidget {
  final Size size;
  final BuildContext context;
  final String orderNo;
  final String docId;
  final String totalPrice;
  final String orderConfirmedDate;
  final String orderConfirmedTime;
  final String deliveryAddressName;
  final String bazarAddress;
  final Function orderDetailsFunc;
  final String categoryImage;
  OrderContainerWidget({
    @required this.categoryImage,
    @required this.orderDetailsFunc,
    @required this.size,
    @required this.bazarAddress,
    @required this.context,
    @required this.deliveryAddressName,
    @required this.docId,
    @required this.orderConfirmedDate,
    @required this.orderConfirmedTime,
    @required this.orderNo,
    @required this.totalPrice,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _OrderContainerMobile(bazarAddress: bazarAddress,categoryImage: categoryImage, context: context,deliveryAddressName: deliveryAddressName,docId: docId,orderConfirmedDate: orderConfirmedDate,orderConfirmedTime: orderConfirmedTime,orderDetailsFunc: orderDetailsFunc,orderNo: orderNo,size: size,totalPrice: totalPrice),
      desktop: _OrderContainerDesktop(),
      tablet: _OrderContainerTablet(),
    );
  }
}
