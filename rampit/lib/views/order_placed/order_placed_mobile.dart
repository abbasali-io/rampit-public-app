part of order_placed_view;

class _OrderPlacedMobile extends StatelessWidget {
  final OrderPlacedViewModel viewModel;

  _OrderPlacedMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 6,
        backgroundColor: MyStyles.themeData().primaryColor,
        child: FaIcon(FontAwesomeIcons.times,
            color: MyStyles.themeData().backgroundColor),
        onPressed: () {
          this.viewModel.goToHomePage();
        },
      ),
      appBar: AppBar(
        foregroundColor: MyStyles.themeData().highlightColor,
        centerTitle: true,
        title: Text('Order Placed'),
        backgroundColor: MyStyles.themeData().backgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: MyStyles.themeData().highlightColor,
            fontWeight: FontWeight.bold,
            fontSize: 5.sp),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 5.h,
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 100.w,
                    height: 40.h,
                    child: Center(
                      child: Container(
                        width: 90.w,
                        height: 40.h,
                        child: Image.asset('assets/images/confirmOrder.png',
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 10.h,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Order Placed Succesfully!',
                          style: TextStyle(
                              fontSize: 6.sp, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    child: Center(
                      child: Container(
                        child: Text(
                          'Thanks for choosing us for \ndelivering your needs.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 100.w,
                    child: Center(
                      child: Container(
                        child: Text(
                          'You can check your order status in my order \nsection.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
