part of my_cart_view;

class _MyCartMobile extends StatelessWidget {
  final MyCartViewModel viewModel;

  _MyCartMobile(this.viewModel);

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
          title: Text('My Cart'),
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
                btnText: 'Check Out',
                tPrice: '18.00',
              )),
        ),
        body: SafeArea(
          child: Container(
            width: 100.w,
            height: 100.h,
            color: MyStyles.themeData().backgroundColor,
            child: Center(
              child: Container(
                width: 90.w,
                height: 70.h,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Slidable(
                      actionPane: SlidableScrollActionPane(),
                      actionExtentRatio: 0.25,
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          color: Color.fromRGBO(226, 236, 243, 1),
                          icon: FontAwesomeIcons.edit,
                          foregroundColor: MyStyles.themeData().backgroundColor,
                          onTap: () {},
                        ),
                        IconSlideAction(
                          color: MyStyles.themeData().primaryColorLight,
                          icon: FontAwesomeIcons.trash,
                          foregroundColor: MyStyles.themeData().primaryColor,
                          onTap: () {},
                        ),
                      ],
                      actions: [
                        IconSlideAction(
                          color: Color.fromRGBO(226, 236, 243, 1),
                          icon: FontAwesomeIcons.edit,
                          foregroundColor: MyStyles.themeData().backgroundColor,
                          onTap: () {},
                        ),
                        IconSlideAction(
                          color: MyStyles.themeData().primaryColorLight,
                          icon: FontAwesomeIcons.trash,
                          foregroundColor: MyStyles.themeData().primaryColor,
                          onTap: () {},
                        ),
                      ],
                      child: MyCartItemWidget(
                        imagePath: 'assets/images/crisp-cider.png',
                        pName: 'PROPER CRISPS CIDER VINEGAR',
                        price: '18.00',
                        quantity: '2',
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
