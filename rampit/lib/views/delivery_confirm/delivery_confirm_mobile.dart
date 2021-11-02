part of delivery_confirm_view;

class _DeliveryConfirmMobile extends StatelessWidget {
  final DeliveryConfirmViewModel viewModel;

  _DeliveryConfirmMobile(this.viewModel);

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
        title: Text('Delivery Options'),
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
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5.w, 5.h, 0.w, 5.h),
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h)),
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all(
                        MyStyles.themeData().primaryColorLight)),
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 5.h),
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h)),
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all(
                        MyStyles.themeData().primaryColor)),
                onPressed: () {
                  this.viewModel.goToHomePage();
                },
                child: Text(
                  'Confirm',
                  style: TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        color: MyStyles.themeData().backgroundColor,
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
            width: 90.w,
            height: 100.h,
            child: ListView.builder(
              itemCount: this.viewModel.radioBtnValues.length,
              itemBuilder: (BuildContext context, int index) {
                var mints =
                    int.parse(this.viewModel.radioBtnValues[index]);
                return ListTile(
                  subtitle: Text(
                    'Max ' + mints.toString() + ' Items per order',
                    style: TextStyle(
                        color: MyStyles.themeData().primaryColor,
                        fontSize: 3.5.sp),
                  ),
                  //leading: Text('Max '+ mints.toString() +' Items per order'),
                  title: Text(
                    this.viewModel.radioBtnValues[index] + ' Minutes Delivery',
                    style: TextStyle(
                        color: MyStyles.themeData().highlightColor,
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: Radio(
                    activeColor: MyStyles.themeData().primaryColor,
                    fillColor: MaterialStateProperty.all<Color>(
                        MyStyles.themeData().primaryColor),
                    value: this.viewModel.radioBtnValues[index],
                    groupValue: this.viewModel.selectedValue,
                    onChanged: (String value) {
                      print(value);
                      this.viewModel.selectedValue = value;
                    },
                  ),
                );
              },
            ),
          ),
        ),
      )),
    );
  }
}
