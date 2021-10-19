part of registration_view;

class _RegistrationMobile extends StatelessWidget {
  final RegistrationViewModel viewModel;

  _RegistrationMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
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
                  'assets/images/bike.png',
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
                    viewModel.signInWithGoogle();
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
  }
}
