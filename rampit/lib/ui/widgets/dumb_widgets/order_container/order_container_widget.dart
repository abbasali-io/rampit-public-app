// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

library order_container_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:flutter/material.dart';

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
  final String categoryImage;
  OrderContainerWidget({
    required this.categoryImage,
    required this.size,
    required this.bazarAddress,
    required this.context,
    required this.deliveryAddressName,
    required this.docId,
    required this.orderConfirmedDate,
    required this.orderConfirmedTime,
    required this.orderNo,
    required this.totalPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.343,
      height: size.height / 4.5,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            autofocus: true,
            visualDensity: VisualDensity(horizontal: 0, vertical: 2),
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            leading: Image.asset(
              categoryImage,
              height: size.height * 0.045,
            ),
            tileColor: Colors.transparent,
            onTap: null,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    'Eggs & Milk',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                        color: MyStyles.themeData().highlightColor,
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Pickup Arranges',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColor,
                      fontSize: size.height * 0.020,
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
                  orderConfirmedDate + ', ' + orderConfirmedTime,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColorLight,
                      fontSize: size.height * 0.020,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  totalPrice,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                      color: MyStyles.themeData().primaryColorLight,
                      fontSize: size.height * 0.024,
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
            height: size.height * 0.020,
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
            ],
          ),
        ],
      ),
    );
  }
}
