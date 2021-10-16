part of my_cart_bottom_nav_widget;

class _MyCartBottomNavMobile extends StatelessWidget {
  final String btnText;
  final String tPrice;
  final MyCartBottomNavViewModel viewModel;
  final Function onTap;
  final bool tPriceShow;
  _MyCartBottomNavMobile({
    @required this.tPriceShow,
    @required this.viewModel,
    @required this.btnText,
    @required this.tPrice,
    @required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Column(
      //mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        this.tPriceShow == true?
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5.w, 0, 0, 0),
              child: Text(
                'Total',
                style: TextStyle(
                    color: MyStyles.themeData().highlightColor,
                    fontSize: 4.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 5.w, 0),
              child: Text(
                'RM ' + this.tPrice,
                style: TextStyle(
                    color: MyStyles.themeData().highlightColor,
                    fontSize: 4.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ):Container(),
        Divider(
          thickness: 0.1.h,
        ),
        Container(
          child: ElevatedButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.fromLTRB(30.w, 2.h, 30.w, 2.h)),
                elevation: MaterialStateProperty.all(5),
                backgroundColor: MaterialStateProperty.all(
                    MyStyles.themeData().primaryColor)),
            onPressed: onTap,
            child: Text(
              this.btnText,
              style: TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        //  Container(
        //   padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
        // ),
      ],
    );
  }
}
