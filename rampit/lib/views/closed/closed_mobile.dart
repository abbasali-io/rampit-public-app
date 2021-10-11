part of closed_view;

class _ClosedMobile extends StatelessWidget {
  final ClosedViewModel viewModel;

  _ClosedMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 10.h,
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                    onTap: () {},
                    child: FaIcon(FontAwesomeIcons.times, size: 7.sp)),
              ),
            ),
            Container(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100.w,
                    height: 40.h,
                    child: Center(
                      child: Container(
                        width: 80.w,
                        height: 30.h,
                        child: Image.asset('assets/images/colsedBanner.png',
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 10.h,
                    child: Center(
                      child: Container(
                        child: Text(
                          'We’re Closed',
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
                          'We deliver between 8 AM - 10 PM \nbut feel free to browse in the \nmenatime!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 4.sp, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ),
                   Container(
                    width: 100.w,
                    height: 20.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: 40.w,
                          height: 6.h,
                          child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                10),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                MyStyles.themeData()
                                                    .primaryColor)),
                                    onPressed: () {
                                      
                                    },
                                    child: Center(
                                      child: Text(
                                        'Browse',
                                        style: TextStyle(
                                            color: MyStyles.themeData()
                                                .backgroundColor),
                                      ),
                                    )
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
