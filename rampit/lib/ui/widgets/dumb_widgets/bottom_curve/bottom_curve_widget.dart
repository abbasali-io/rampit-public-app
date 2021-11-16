

// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
class BottomCruveWidget extends StatelessWidget {
  Size size;
  int splashLength;
  BuildContext context;
  int currentPage;
  PageController controller;
  Function goToRegistrationPage;
  Function goTonextPage;
  BottomCruveWidget({
    required this.context,
    required this.size,
    required this.currentPage,
    required this.controller,
    required this.goToRegistrationPage,
    required this.goTonextPage,
    required this.splashLength,
  });
  @override
  Widget build(BuildContext context){
    return Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          Image.asset(
            'assets/images/curve.png',
            fit: BoxFit.cover,
            // height: size.height* 0.200,
          ),
          Positioned.fill(
            right: size.height * 0.030,
            bottom: size.height * 0.020,
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => goToRegistrationPage,
                child: Text(
                  currentPage != 2 ? 'Skip' : 'Let\'s Go',
                  style: GoogleFonts.poppins(
                    color: MyStyles.themeData().backgroundColor,
                    fontSize: size.height * 0.024,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: -30,
            child: GestureDetector(
              onTap: () => goTonextPage,
              child: Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.096,
                      width: size.height * 0.100,
                      decoration: const BoxDecoration(
                          // gradient: LinearGradient(
                          //   begin: Alignment.centerLeft,
                          //   end: Alignment.centerRight,
                          //   colors: [MyStyles.themeData().primaryColorLight.withAlpha(3), MyStyles.themeData().primaryColorLight.withAlpha(3)],
                          // ),
                          //borderRadius: BorderRadius.circular(30),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.black.withOpacity(0.5),
                          //     spreadRadius: 0,
                          //     blurRadius: 12,
                          //     offset: Offset(0, 7), // changes position of shadow
                          //   ),
                          // ],
                          ),
                    ),
                    Positioned.fill(
                      child: Container(
                        alignment: Alignment.center,
                        height: size.height * 0.080,
                        width: size.width * 0.090,
                        child: Image.asset(
                          'assets/images/onBoardingBtn.png',
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 15, right: 10),
                        //   child: Image.asset(
                        //     'assets/images/onBoardingBtn.png',
                        //   ),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            left: size.height * 0.030,
            bottom: size.height * 0.030,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  splashLength,
                  (int index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: MyStyles.themeData().backgroundColor,
                    ),
                    margin: const EdgeInsets.only(right: 5),
                    height: size.height * 0.010,
                    curve: Curves.easeIn,
                    width: currentPage == index
                        ? size.width * 0.050
                        : size.width * 0.020,
                  ),
                ),
              ),
            ),
          )
        ],
      );
  }
}
