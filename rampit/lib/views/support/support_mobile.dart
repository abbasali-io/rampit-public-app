part of support_view;

class _SupportMobile extends StatelessWidget {
  final SupportViewModel viewModel;

  _SupportMobile(this.viewModel);

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
          title: 'Support',
          leading: true,
          action: false,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: MyStyles.themeData().backgroundColor,
        child: Container(
            width: 100.w,
            height: 15.h,
            child: MyCartBottomNavWidget(
              btnText: 'Submit',
              tPrice: '',
              tPriceShow: false,
              onTap: () {
                this.viewModel.nav.navigateTo(accountViewRoute);
              },
            )),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/support.png',
                fit: BoxFit.contain,
              ),
            ),
            GestureDetector(
              onTap: () {
                this.viewModel.nav.navigateTo(faqViewRoute);
              },
              child: Container(
                height: size.height * 0.060,
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.symmetric(vertical: 20)
                    .copyWith(left: 250),
                decoration: BoxDecoration(
                  color: MyStyles.themeData().primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'FAQ',
                    style: GoogleFonts.nunito(
                        color: MyStyles.themeData().backgroundColor,
                        fontSize: size.height * 0.026,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Text(
              'Write us your queries',
              style: GoogleFonts.nunito(
                color: MyStyles.themeData().highlightColor,
                fontSize: size.height * 0.026,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: size.height * 0.010,
            ),
            Text(
              'Your words means alot to us',
              style: GoogleFonts.nunito(
                color: MyStyles.themeData().highlightColor,
                fontSize: size.height * 0.026,
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              height: size.height / 5.5,
              margin: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12,
                    offset: Offset(4, 4),
                    color: Color(0x99D1CDC7),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: TextField(
                minLines: 10,
                maxLines: 15,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: 'Write your queries here..',
                  hintStyle: GoogleFonts.nunito(
                      fontSize: size.height * 0.022,
                      color: MyStyles.themeData().primaryColorLight,
                      fontWeight: FontWeight.w700),
                  filled: true,
                  fillColor: MyStyles.themeData().backgroundColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
