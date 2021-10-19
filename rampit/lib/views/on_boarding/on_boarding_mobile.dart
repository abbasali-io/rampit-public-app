part of on_boarding_view;

class _OnBoardingMobile extends StatelessWidget {
  final OnBoardingViewModel viewModel;

  _OnBoardingMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
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
                  controller: this.viewModel.controller,
                  itemCount: this.viewModel.splashData.length,
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
                              viewModel.splashData[index]['image'],

                              // fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: RichText(
                            textAlign: TextAlign.left,
                            textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false),
                            text: TextSpan(
                              text: viewModel.splashData[index]['title'],
                              style: GoogleFonts.poppins(
                                color: MyStyles.themeData().highlightColor,
                                fontSize: size.height * 0.050,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: viewModel.splashData[index]['text'],
                                  style: GoogleFonts.poppins(
                                      color:
                                          MyStyles.themeData().highlightColor,
                                      fontSize: size.height * 0.050,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // transform: Transform.scale(scale: 28),
                          padding: const EdgeInsets.only(left: 28, right: 20),
                          child: Text(
                            viewModel.splashData[index]['subtitle'],
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
                    viewModel.pageIndexUpdate(value);
                  }),
            ),
            //lower body containing curve, next button, indicator, skip
            BottomCruveWidget(
              context: context,
              controller: this.viewModel.controller,
              currentPage: this.viewModel.currentPage,
              goToRegistrationPage: () {
                this.viewModel.goToRegisterPage();
              },
              goTonextPage: () {
                this.viewModel.pageUpdate();
              },
              size: size,
              splashLength: this.viewModel.splashData.length,
              // size,
              // context,
              // viewModel.currentPage,
              // viewModel.controller,
            ),
          ],
        ),
      ),
    );
  }
}
