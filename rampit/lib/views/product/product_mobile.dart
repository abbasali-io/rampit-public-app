part of product_view;

class _ProductMobile extends StatelessWidget {
  final ProductViewModel viewModel;
  _ProductMobile({
    @required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
        appBar: AppBar(
          foregroundColor: MyStyles.themeData().highlightColor,
          backgroundColor: MyStyles.themeData().backgroundColor,
          elevation: 0,
        ),
        body: SafeArea(
          child: Container(
            width: 100.w,
            height: 100.h,
            color: MyStyles.themeData().backgroundColor,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 33.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(this.viewModel.prod.imagePath),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Divider(
                    thickness: 0.2.h,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    width: 100.h,
                    height: 51.h,
                    child: ListView(
                      children: [
                        Center(
                          child: Container(
                              width: 90.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      this.viewModel.prod.heading1,
                                      style: TextStyle(
                                          fontSize: 6.sp,
                                          fontWeight: FontWeight.bold,
                                          color: MyStyles.themeData()
                                              .highlightColor),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 1.h, 0, 1.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                style: BorderStyle.solid),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              IconButton(
                                                  splashRadius: 3.sp,
                                                  onPressed: () {
                                                    this
                                                        .viewModel
                                                        .productIncrement();
                                                  },
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.plus,
                                                    size: 3.sp,
                                                  )),
                                              viewModel.productCounter == 0
                                                  ? Text('')
                                                  : Container(
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  2, 0, 2, 0),
                                                          child: Text(
                                                            viewModel
                                                                .productCounter
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontSize: 5.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                              viewModel.productCounter == 0
                                                  ? Text('')
                                                  : IconButton(
                                                      splashRadius: 3.sp,
                                                      onPressed: () {
                                                        this
                                                            .viewModel
                                                            .productDecrement();
                                                      },
                                                      icon: FaIcon(
                                                        FontAwesomeIcons.minus,
                                                        size: 3.sp,
                                                      ))
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            this.viewModel.prod.heading2,
                                            style: TextStyle(
                                                fontSize: 5.sp,
                                                fontWeight: FontWeight.bold,
                                                color: MyStyles.themeData()
                                                    .highlightColor),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 1.h, 0, 1.h),
                                    child: Text(
                                      'About The Product',
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          fontSize: 5.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(0, 1.h, 0, 2.h),
                                    child: Text(
                                      this.viewModel.prod.description,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color:
                                            MyStyles.themeData().highlightColor,
                                        fontSize: 4.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        Divider(
                                    thickness: 0.1.h,
                                  ),
                                  Center(
                                    child: Container(
                                      width: 90.w,
                                      padding: EdgeInsets.fromLTRB(0, 2.h, 0, 2.h),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                            padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(6.w, 2.h, 6.w, 2.h)),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      MyStyles.themeData()
                                                          .primaryColor)),
                                          onPressed: () {},
                                          child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                              color: MyStyles.themeData()
                                                  .backgroundColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 4.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                      ],
                    ),
                  ),
                ]),
          ),
        ));
  }
}
