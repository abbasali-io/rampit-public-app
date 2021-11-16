// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import './on_boarding_view_model.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardingViewModel>.reactive(
      viewModelBuilder: () => OnBoardingViewModel(),
      onModelReady: (OnBoardingViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        OnBoardingViewModel model,
        Widget? child,
      ) {
        var size = MediaQuery.of(context).size;
        return Scaffold(
          backgroundColor: MyStyles.themeData().backgroundColor,
          body: SafeArea(
            child: Column(
              children: [
                //upper Body including title and illustrations
                Expanded(
                  flex: 2,
                  child: PageView.builder(
                      controller: model.controller,
                      itemCount: model.splashData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size.height * 0.020,
                            ),
                            Expanded(
                              flex: 1,
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Image.asset(
                                  model.splashData[index]['image']!,

                                  // fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 28.0),
                              child: RichText(
                                textAlign: TextAlign.left,
                                textHeightBehavior: TextHeightBehavior(
                                    applyHeightToFirstAscent: false),
                                text: TextSpan(
                                  text: model.splashData[index]['title'],
                                  style: GoogleFonts.poppins(
                                    color: MyStyles.themeData().highlightColor,
                                    fontSize: size.height * 0.050,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: model.splashData[index]['text'],
                                      style: GoogleFonts.poppins(
                                          color: MyStyles.themeData()
                                              .highlightColor,
                                          fontSize: size.height * 0.050,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // transform: Transform.scale(scale: 28),
                              padding: EdgeInsets.only(left: 28, right: 20),
                              child: Text(
                                model.splashData[index]['subtitle']!,
                                textAlign: TextAlign.justify,
                                style: GoogleFonts.poppins(
                                    color: MyStyles.themeData().highlightColor,
                                    fontSize: size.height * 0.020,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.060,
                            ),
                          ],
                        );
                      },
                      onPageChanged: (value) {
                        model.pageIndexUpdate(value);
                      }),
                ),
                //lower body containing curve, next button, indicator, skip
                // BottomCruveWidget(
                //   context: context,
                //   controller: model.controller!,
                //   currentPage: model.currentPage!,
                //   goToRegistrationPage: ()=>
                //     model.goToRegisterPage(),
                //   goTonextPage: () =>
                //     model.pageIndexUpdate(model.currentPage!),
                //   size: size,
                //   splashLength: model.splashData.length,
                //   // size,
                //   // context,
                //   // viewModel.currentPage,
                //   // viewModel.controller,
                // ),
                Stack(
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
                          onTap: () {
                            model.goToRegisterPage();
                          },
                          child: Text(
                            model.currentPage! != 2 ? 'Skip' : 'Let\'s Go',
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
                        onTap: () {
                          model.pageUpdate();
                        },
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Stack(
                            children: [
                              Container(
                                height: size.height * 0.096,
                                width: size.height * 0.100,
                                decoration: BoxDecoration(),
                              ),
                              Positioned.fill(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.080,
                                  width: size.width * 0.090,
                                  child: Image.asset(
                                    'assets/images/onBoardingBtn.png',
                                  ),
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
                            model.splashData.length,
                            (int index) => AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                color: MyStyles.themeData().backgroundColor,
                              ),
                              margin: EdgeInsets.only(right: 5),
                              height: size.height * 0.010,
                              curve: Curves.easeIn,
                              width: model.currentPage == index
                                  ? size.width * 0.050
                                  : size.width * 0.020,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
