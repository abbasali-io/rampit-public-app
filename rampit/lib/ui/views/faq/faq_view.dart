// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:stacked/stacked.dart';

import './faq_view_model.dart';

class FaqView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FaqViewModel>.reactive(
      viewModelBuilder: () => FaqViewModel(),
      onModelReady: (FaqViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        FaqViewModel model,
        Widget? child,
      ) {
        var size = MediaQuery.of(context).size;
        ScreenUtil.init(
          BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height),
          designSize: const Size(100, 100),
        );
        return Scaffold(
          backgroundColor: MyStyles.themeData().backgroundColor,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55.0),
            child: AppbarWidget(
              title: 'FAQ',
              leading: true,
              action: false,
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: [
                SizedBox(
                  height: size.height * 0.050,
                ),
                faqContainer(
                  model: model,
                  size: size,
                  question: model.question!,
                  answer: model.answer,
                  index: 1,
                  selectedIndex: model.selectedIndex,
                  onPress: () {
                    model.setFaqContainerHieght(1);
                  },
                ),
                faqContainer(
                  model: model,
                  size: size,
                  question: model.question!,
                  index: 2,
                  answer: model.answer,
                  selectedIndex: model.selectedIndex,
                  onPress: () {
                    model.setFaqContainerHieght(2);
                  },
                ),
                faqContainer(
                  model: model,
                  size: size,
                  question: model.question!,
                  index: 3,
                  answer: model.answer,
                  selectedIndex: model.selectedIndex,
                  onPress: () {
                    model.setFaqContainerHieght(3);
                  },
                ),
                SizedBox(
                  height: size.height * 0.050,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget faqContainer({
    required FaqViewModel model,
    required Size size,
    required String question,
    String? answer,
    GestureTapCallback? onPress,
    int? index,
    int? selectedIndex,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: onPress,
          child: Container(
            width: double.infinity,
            height: size.height / 12,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Color(0x33303841),
                  blurRadius: 15,
                  offset: Offset(-7, 7),
                ),
              ],
              color: MyStyles.themeData().primaryColor,
            ),
            child: Text(
              question,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: GoogleFonts.nunito(
                  color: MyStyles.themeData().backgroundColor,
                  fontSize: size.height * 0.023,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Flexible(
          child: index == selectedIndex
              ? AnimatedContainer(
                  duration: const Duration(milliseconds: 120),
                  curve: Curves.easeIn,
                  height: model.animatedHeight,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ).copyWith(bottom: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Color(0x33303841),
                        blurRadius: 15,
                        offset: Offset(-7, 7),
                      ),
                    ],
                    color: MyStyles.themeData().backgroundColor,
                  ),
                  child: Text(
                    answer!,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: GoogleFonts.nunito(
                        color: MyStyles.themeData().highlightColor,
                        fontSize: size.height * 0.020,
                        fontWeight: FontWeight.w700),
                  ),
                )
              : Container(
                  height: 30,
                ),
        )
      ],
    );
  }
}
