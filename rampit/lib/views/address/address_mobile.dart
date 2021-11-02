part of address_view;

class _AddressMobile extends StatelessWidget {
  final AddressViewModel viewModel;
  final _formKey = GlobalKey<FormState>();
  _AddressMobile(this.viewModel);

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
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: 100.w,
                    height: 15.h,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Enter delivery address',
                        style: TextStyle(
                            fontSize: 5.sp,
                            fontWeight: FontWeight.bold,
                            color: MyStyles.themeData().highlightColor),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 9.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: MyStyles.themeData().highlightColor)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            value: this.viewModel.selectedState,
                            dropdownColor: MyStyles.themeData().backgroundColor,
                            items: this
                                .viewModel
                                .states
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "langauage langauage langauage langauage",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            onChanged: (String value) {
                              viewModel.selectState(value: value);
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 9.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 5.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: MyStyles.themeData().highlightColor)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: DropdownButton<String>(
                            underline: SizedBox(),
                            value: this.viewModel.selectedArea,
                            dropdownColor: MyStyles.themeData().backgroundColor,
                            items: this
                                .viewModel
                                .areas
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "langauage langauage langauage langauage",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (String value) {
                              viewModel.selectedArea = value;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 9.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 87.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              //You can also use EdgeInsets.only
                              horizontal: 8.0, //Change this
                              vertical: 8.0, //Change this
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            label: Text(
                              'Post Code',
                              style: TextStyle(
                                color: MyStyles.themeData().primaryColorLight,
                              ),
                            ),
                            hoverColor: MyStyles.themeData().highlightColor,
                            focusColor: MyStyles.themeData().highlightColor,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(6)
                          ],
                          validator: (value) {
                            if (value.isEmpty || value == null) {
                              return 'Please Enter Post Code';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 9.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 87.w,
                        child: TextFormField(
                          decoration: InputDecoration(
                            isDense: true,
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              //You can also use EdgeInsets.only
                              horizontal: 8.0, //Change this
                              vertical: 8.0, //Change this
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.5,
                              ),
                            ),
                            hoverColor: MyStyles.themeData().highlightColor,
                            focusColor: MyStyles.themeData().highlightColor,
                            label: Text(
                              'Unit Number,House Number,Street Name',
                              style: TextStyle(
                                color: MyStyles.themeData().primaryColorLight,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: MyStyles.themeData().highlightColor,
                                width: 1.0,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(150)
                          ],
                          validator: (value) {
                            if (value.isEmpty || value == null) {
                              return 'Please Enter Complete Address';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 32.h,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 30.h,
                        width: 87.w,
                        child: Image.asset(
                            'assets/images/map.jpg',
                            fit: BoxFit.fill,
                          ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.solid,
                                color: MyStyles.themeData().highlightColor)),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 7.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 87.w,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              'Lable as:',
                              style: TextStyle(
                                  color: MyStyles.themeData().highlightColor,
                                  fontSize: 3.5.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 7.h,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: 87.w,
                          height: 5.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                2),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                viewModel.homeButton)),
                                    onPressed: () {
                                      this
                                          .viewModel
                                          .buttonColorChange(value: 'Home');
                                    },
                                    child: Center(
                                      child: Text(
                                        'Home',
                                        style: TextStyle(
                                            color: this
                                                        .viewModel
                                                        .selectedAddress ==
                                                    'Home'
                                                ? Colors.white
                                                : MyStyles.themeData()
                                                    .highlightColor),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                2),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                viewModel.officeButton)),
                                    onPressed: () {
                                      this
                                          .viewModel
                                          .buttonColorChange(value: 'Office');
                                    },
                                    child: Center(
                                      child: Text(
                                        'Office',
                                        style: TextStyle(
                                            color: this
                                                        .viewModel
                                                        .selectedAddress ==
                                                    'Office'
                                                ? Colors.white
                                                : MyStyles.themeData()
                                                    .highlightColor),
                                      ),
                                    )),
                              )
                            ],
                          )),
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 20.h,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: 87.w,
                          height: 5.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                2),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                MyStyles.themeData()
                                                    .primaryColorLight)),
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                            color: MyStyles.themeData()
                                                .highlightColor),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all<double>(
                                                2),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                MyStyles.themeData()
                                                    .primaryColor)),
                                    onPressed: () {
                                      if (_formKey.currentState.validate()) {
                                        this
                                            .viewModel
                                            .goToConfirmDeliveryPage();
                                      }
                                      return false;
                                    },
                                    child: Center(
                                      child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color: MyStyles.themeData()
                                                .backgroundColor),
                                      ),
                                    )),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
