part of product_container_widget;

class _ProductContainerMobile extends StatelessWidget {
  final String imagePath;
  final String heading1;
  final String heading2;
  final String text;
  final ProductContainerViewModel viewModel;
  _ProductContainerMobile({
    @required this.viewModel,
    @required this.imagePath,
    @required this.heading1,
    @required this.heading2,
    @required this.text,
  });
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 50.w,
          height: 55.h,
          child: Column(
            children: [
              Container(
                width: 45.w,
                height: 42.5.h,
                decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(this.imagePath),
                              fit: BoxFit.fill)),
                    ),
                    Container(
                      width: 45.w,
                      height: 7.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              splashRadius: 5.sp,
                              onPressed: () {
                                this.viewModel.productIncrement();
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
                                      padding: const EdgeInsets.fromLTRB(2,0,2,0),
                                      child: Text(
                                        viewModel.productCounter.toString(),
                                        style: TextStyle(
                                          fontSize: 6.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                          viewModel.productCounter == 0
                              ? Text('')
                              : IconButton(
                                  splashRadius: 5.sp,
                                  onPressed: () {
                                    this.viewModel.productDecrement();
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.minus,
                                    size: 3.sp,
                                  ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: 45.w,
                  height: 12.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                        this.heading1,
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.5.sp,
                            fontWeight: FontWeight.bold),
                      )),
                      Container(
                          child: Text(
                        this.heading2,
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.5.sp,
                            fontWeight: FontWeight.bold),
                      )),
                      Container(
                          height: 4.h,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              this.text,
                              style: TextStyle(
                                color: MyStyles.themeData().primaryColorLight,
                                fontSize: 4.sp,
                              ),
                            ),
                          ))
                    ],
                  ))
            ],
          ),
        ));
  }
}
