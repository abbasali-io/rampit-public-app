part of faq_view;

class _FaqMobile extends StatelessWidget {
  final FaqViewModel viewModel;

  _FaqMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
      backgroundColor: MyStyles.themeData().backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
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
                    size: size,
                    question: this.viewModel.question,
                    answer: this.viewModel.answer,
                    index: 1,
                    selectedIndex: this.viewModel.selectedIndex,
                    onPress: () {
                      this.viewModel.selectedIndex = 1;
                      this.viewModel.animatedHeight != 0.0
                          ? this.viewModel.animatedHeight = 0.0
                          : this.viewModel.animatedHeight = 150.0;
                    },
                  ),
                  faqContainer(
                    size: size,
                    question: this.viewModel.question,
                    index: 2,
                    answer: this.viewModel.answer,
                    selectedIndex: this.viewModel.selectedIndex,
                    onPress: () {
                      this.viewModel.selectedIndex = 2;
                      this.viewModel.animatedHeight != 0.0
                          ? this.viewModel.animatedHeight = 0.0
                          : this.viewModel.animatedHeight = 150.0;
                    },
                  ),
                  faqContainer(
                    size: size,
                    question: this.viewModel.question,
                    index: 3,
                    answer: this.viewModel.answer,
                    selectedIndex: this.viewModel.selectedIndex,
                    onPress: () {
                      this.viewModel.selectedIndex = 3;
                      this.viewModel.animatedHeight != 0.0
                          ? this.viewModel.animatedHeight = 0.0
                          : this.viewModel.animatedHeight = 150.0;
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.050,
                  ),
                ],
              ),
      ),
    );
  }
  Widget faqContainer({
    @required Size size,
    @required String question,
    String answer,
    GestureTapCallback onPress,
    int index,
    int selectedIndex,
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
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
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
                  height: this.viewModel.animatedHeight,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ).copyWith(bottom: 30),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33303841),
                        blurRadius: 15,
                        offset: Offset(-7, 7),
                      ),
                    ],
                    color: MyStyles.themeData().backgroundColor,
                  ),
                  child: Text(
                    answer,
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
