// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/dumb_widgets/build_social_media_button/build_social_media_button_widget.dart';
import 'package:stacked/stacked.dart';

import './registration_view_model.dart';

class RegistrationView extends StatelessWidget {
  RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegistrationViewModel>.reactive(
      viewModelBuilder: () => RegistrationViewModel(),
      onModelReady: (RegistrationViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        RegistrationViewModel model,
        Widget? child,
      ) {
       var size = MediaQuery.of(context).size;
    return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.100,
                ),
                Text(
                    'Welcome to Rampit',
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.032,
                      fontWeight: FontWeight.w800,
                      color: MyStyles.themeData().primaryColor,
                    ),
                  ),
                SizedBox(
                  height: size.height * 0.070,
                ),
                Image.asset(
                  'assets/images/rampitBike.png',
                  fit: BoxFit.contain,
                ),
                // SizedBox(
                //   height: size.height * 0.050,
                // ),
                BuildSocialMediaButtonWidget(
                  size: size,
                  iconUrl: 'assets/images/gmail.png',
                  buttonTitle: 'Continue with Google',
                  context: context,
                  widthSpace: size.height * 0.070,
                  buttonColor: Color(0xffE23E2F),
                  onTap: () {
                    model.signInWithGoogle();
                  },
                ),

                BuildSocialMediaButtonWidget(
                  size: size,
                  iconUrl: 'assets/images/apple.png',
                  buttonTitle: 'Continue with Apple',
                  widthSpace: size.height * 0.069,
                  context: context,
                  buttonColor: Color(0xff263238),
                  onTap: null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
