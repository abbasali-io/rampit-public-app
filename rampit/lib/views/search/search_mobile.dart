part of search_view;

class _SearchMobile extends StatelessWidget {
  final SearchViewModel viewModel;

  _SearchMobile(this.viewModel);

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
        elevation: 10,
        backgroundColor: MyStyles.themeData().backgroundColor,
        child: const FaIcon(FontAwesomeIcons.shoppingCart, color: Colors.black),
        onPressed: () {
          this.viewModel.navigateToPage(pageIndex: 5);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        unselectedItemColor: MyStyles.themeData().highlightColor,
        selectedItemColor: MyStyles.themeData().primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 40,
        onTap: (index) {
          this.viewModel.navigateToPage(pageIndex: index);
        },
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shoppingBag), label: 'Category'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAlt), label: 'User'),
        ],
        backgroundColor: MyStyles.themeData().backgroundColor,
        // shape: CircularNotchedRectangle(),
        // notchMargin: 10.0,
        // child: new Row(
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget>[
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.home),
        //       onPressed: () {
        //         this.viewModel.navigateToPage(pageName: 'Home');
        //       },
        //     ),
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.shoppingBag),
        //       onPressed: () {},
        //     ),
        //     SizedBox(
        //       width: 10.w,
        //     ),
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.search),
        //       onPressed: () {},
        //     ),
        //     IconButton(
        //       icon: FaIcon(FontAwesomeIcons.userAlt),
        //       onPressed: () {},
        //     ),
        //   ],
        // ),
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
                  height: 10.h,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: MyStyles.themeData().highlightColor,
                              width: 0.1.sp,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: MyStyles.themeData().highlightColor,
                              width: 0.1.sp,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: MyStyles.themeData().highlightColor,
                              width: 0.1.sp,
                            ),
                          ),
                          isDense: true,
                          contentPadding:
                              EdgeInsets.fromLTRB(0.w, 2.h, 2.w, 0.h),
                          fillColor: MyStyles.themeData().primaryColorLight,
                          filled: true,
                          labelText: 'Search',
                          labelStyle: TextStyle(
                              color: MyStyles.themeData().highlightColor),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(4.sp),
                            child: FaIcon(
                              FontAwesomeIcons.search,
                              color: MyStyles.themeData().primaryColor,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 0.1.h,
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Container(
                    width: 90.w,
                    //height: 65.h,
                    child: Wrap(
                      spacing: 5.w,
                      direction: Axis.horizontal,
                      runSpacing: 2.h,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Snacks'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Pantry'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Sweets'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Drinks'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 30.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Eggs & Dairy'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 25.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Chocolate'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Chips'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Cheese'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 27.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Vagetables'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 20.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Meals'),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 25.w,
                            height: 5.h,
                            child: TagContainerStyleWidget(
                                tagActive: false, tagName: 'Heat & Eat'),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
