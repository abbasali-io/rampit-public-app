part of check_out_view;

class _CheckOutMobile extends StatelessWidget {
  final CheckOutViewModel viewModel;

  _CheckOutMobile(this.viewModel);

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
        centerTitle: true,
        title: Text('Checkout'),
        backgroundColor: MyStyles.themeData().backgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: MyStyles.themeData().highlightColor,
            fontWeight: FontWeight.bold,
            fontSize: 5.sp),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: MyStyles.themeData().backgroundColor,
        child: Container(
            width: 100.w,
            height: 15.h,
            child: MyCartBottomNavWidget(
              btnText: 'Pay Now',
              tPrice: '18.00',
              tPriceShow: true,
              onTap: () {},
            )),
      ),
      body: SafeArea(
        child: Container(
          color: MyStyles.themeData().backgroundColor,
          width: 100.w,
          height: 100.h,
          child: Center(
            child: Container(
              width: 90.w,
              height: 100.h,
              child: Column(
                children: [
                  Container(
                    height: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        border: Border.all(style: BorderStyle.solid)),
                    child: Center(
                      child: Container(
                        width: 80.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 4.h,
                              width: 80.w,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child:  Text(
                                  'B-11-03, Residensi Kepongmas',
                                  maxLines:1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: MyStyles.themeData().highlightColor,
                                    fontSize: 5.sp,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                            ),
                            Container(
                              height: 3.h,
                              width: 80.w,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Meet at guard house',
                                  maxLines:1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: MyStyles.themeData().primaryColorLight,
                                    fontSize: 4.sp,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                            ),
                            Container(
                              height: 9.h,
                              width: 80.w,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 10.w,
                                      height: 5.h,
                                      decoration: BoxDecoration(
                                        color: MyStyles.themeData().highlightColor,
                                        borderRadius: BorderRadius.circular(7),
                                        image: DecorationImage(
                                          image: AssetImage('assets/icons/clock.png'),
                                          fit: BoxFit.scaleDown
                                        )
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w
                                    ),
                                    Text(
                                      '15 Mins',
                                      maxLines:1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: MyStyles.themeData().highlightColor,
                                        fontSize: 4.sp,
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                            Container(
                              height: 3.h,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Instructions : Special Instructions by user',
                                  maxLines:1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: MyStyles.themeData().primaryColorLight,
                                    fontSize: 4.sp,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              )
                            )
                          ],
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 35.h,
                    width: 90.w,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return MyCartItemWidget(
                            quantity: '2',
                            imagePath: 'assets/images/crisp-cider.png',
                            price: '18.00',
                            pName: 'Crisp Cider');
                      },
                    ),
                  ),
                  Center(
                    child: Container(
                        width: 90.w,
                        height: 15.h,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: ListTile(
                            leading: Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  border: Border.all(style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/rider.png'),
                                      fit: BoxFit.scaleDown)),
                            ),
                            trailing: Container(
                              child: Text(
                                'RM ' + '0.00',
                                style: TextStyle(
                                    color: MyStyles.themeData().highlightColor,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Container(
                              width: 33.w,
                              child: Text(
                                'Delivery',
                                style: TextStyle(
                                    color: MyStyles.themeData().highlightColor,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
