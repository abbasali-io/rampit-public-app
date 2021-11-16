// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable, prefer_const_constructors

library appbar_widget;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  @required bool leading;
  @required bool action;
  @required String? title;

  AppbarWidget({
    Key? key, 
    this.leading = true,
    this.title,
    this.action = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return AppBar(
      foregroundColor: MyStyles.themeData().highlightColor,
      title: Text(
        title!,
        style: GoogleFonts.nunito(
          color: Color(0xff303841),
          fontSize: size.height * 0.026,
          fontWeight: FontWeight.w800,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      // leading: leading
      //     ? IconButton(
      //         icon: Icon(
      //           Icons.arrow_back,
      //           color: Color(0xff303841),
      //           size: size.height * 0.030,
      //         ),
      //         onPressed: () {
      //           print(_nav.previousRoute);
      //           _nav.navigateTo(_nav.previousRoute);
      //         },
      //       )
      //     : Container(),
      actions: <Widget>[
        action
            ? IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(0xff303841),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'mynotifications');
                },
              )
            : Container(),
        //Settings(),
      ],
      backgroundColor: Colors.white,
    );
  }
}
