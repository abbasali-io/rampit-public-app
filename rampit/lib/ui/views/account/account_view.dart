// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rampit/app/app.router.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:rampit/ui/widgets/dumb_widgets/inner_shadow/inner_shadow_widget.dart';
import 'package:stacked/stacked.dart';

import './account_view_model.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountViewModel>.reactive(
      viewModelBuilder: () => AccountViewModel(),
      onModelReady: (AccountViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        AccountViewModel model,
        Widget? child,
      ) {
        var size = MediaQuery.of(context).size;
        return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: FloatingActionButton(
            elevation: 10,
            backgroundColor: MyStyles.themeData().backgroundColor,
            child: const FaIcon(FontAwesomeIcons.shoppingCart,
                color: Colors.black),
            onPressed: () {
              model.navigateToPage(pageIndex: 5);
            },
          ),
          backgroundColor: MyStyles.themeData().backgroundColor,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: AppbarWidget(
              title: 'My Account',
              leading: true,
              action: false,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 3,
            unselectedItemColor: MyStyles.themeData().highlightColor,
            selectedItemColor: MyStyles.themeData().primaryColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            onTap: (index) {
              model.navigateToPage(pageIndex: index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.shoppingBag),
                  label: 'Category'),
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
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              header(size: size, context: context, model: model),
              SizedBox(
                height: size.height * 0.100,
              ),
              optionsRowWidget(
                size: size,
                context: context,
                optionTitle: 'Terms & Condition',
                icon: Icons.article_outlined,
                onTap: () {},
              ),
              // optionsRowWidget(
              //   size: size,
              //   context: context,
              //   optionTitle: 'Saved Addresses',
              //   icon: Icons.article_outlined,
              //   onTap: () {
              //     viewModel.goToAddress();
              //   },
              // ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Divider(
                color: Color(0xffEFF2EB),
                thickness: 2,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              GestureDetector(
                onTap: () {
                  model.goToSupport();
                },
                child: optionsRowWidget(
                  size: size,
                  context: context,
                  optionTitle: 'Support',
                  icon: FontAwesomeIcons.questionCircle,
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Divider(
                color: Color(0xffEFF2EB),
                thickness: 2,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              optionsRowWidget(
                model: model,
                isSwitch: true,
                switchValue: model.switchValue!,
                size: size,
                context: context,
                optionTitle: 'Notifications',
                icon: Icons.notifications_outlined,
                onTap: () {
                  model.goToSupport();
                },
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Divider(
                color: Color(0xffEFF2EB),
                thickness: 2,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              optionsRowWidget(
                size: size,
                context: context,
                optionTitle: 'About',
                icon: Icons.info_outline,
                onTap: () {
                  //viewModel.goToSupport();
                },
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Divider(
                color: Color(0xffEFF2EB),
                thickness: 2,
              ),
              optionsRowWidget(
                size: size,
                context: context,
                optionTitle: 'Change Addresses',
                icon: Icons.location_on_outlined,
                onTap: () {
                  model.goToAddress();
                },
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Divider(
                color: Color(0xffEFF2EB),
                thickness: 2,
              ),
              SizedBox(
                height: size.height * 0.040,
              ),
              logoutButton(size: size, context: context, model: model),
              SizedBox(
                height: size.height * 0.070,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget logoutButton(
      {required Size size,
      BuildContext? context,
      required AccountViewModel model}) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context!,
          builder: (BuildContext context) =>
              customDialogBox(context: context, model: model),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        height: size.height * 0.070,
        decoration: BoxDecoration(
            color: MyStyles.themeData().primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: InnerShadow(
                blur: 3,
                color: Color(0xffF8F1F1),
                offset: Offset(0, 2),
                child: Text(
                  'Logout',
                  style: GoogleFonts.poppins(
                    color: MyStyles.themeData().backgroundColor,
                    fontWeight: FontWeight.w600,
                    fontSize: size.height * 0.026,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.020,
            ),
            Icon(
              Icons.logout,
              color: MyStyles.themeData().backgroundColor,
              size: size.height * 0.030,
            )
          ],
        ),
      ),
    );
  }

  Widget customDialogBox(
      {BuildContext? context, required AccountViewModel model}) {
    var size = MediaQuery.of(context!).size;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Container(
        height: size.height * 0.230,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              alignment: Alignment.centerLeft,
              child: Text(
                'Logging out',
                style: GoogleFonts.nunito(
                    fontSize: size.height * 0.026,
                    color: Color(0xff383E56),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Are you sure?',
                style: GoogleFonts.nunito(
                    fontSize: size.height * 0.024,
                    color: Color(0xff383E56),
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: size.height * 0.030,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(right: 30),
                    primary: Colors.transparent,
                  ),
                  onPressed: () {
                    model.nav.navigateTo(Routes.accountView);
                  },
                  child: Center(
                    child: Text(
                      'Confirm',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: size.height * 0.028,
                          color: MyStyles.themeData().highlightColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(right: 30),
                    primary: Colors.transparent,
                  ),
                  onPressed: () {
                    model.nav.navigateTo(Routes.accountView);
                  },
                  child: Center(
                    child: Text(
                      'Cancel',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          fontSize: size.height * 0.028,
                          color: MyStyles.themeData().primaryColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.050,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget header(
      {required Size size,
      BuildContext? context,
      required AccountViewModel model}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.060,
          ),
          Center(
            child: CircleAvatar(
              radius: size.height * 0.055,
              backgroundColor: Color(0xff383E56),
              child: CircleAvatar(
                radius: size.height * 0.050,
                backgroundImage: AssetImage(model.userImage!),
              ),
            ),
          ),
          SizedBox(
            width: size.height * 0.030,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    model.userName!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                        color: MyStyles.themeData().highlightColor,
                        fontSize: size.height * 0.024,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit_outlined),
                    color: MyStyles.themeData().primaryColor,
                    onPressed: () {
                      model.goToEditPage();
                    },
                  )
                ],
              ),
              Text(
                model.userEmailId!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.nunito(
                    color: MyStyles.themeData().primaryColorLight,
                    fontSize: size.height * 0.024,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text(
                model.userAddress!,
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
                style: GoogleFonts.nunito(
                    color: MyStyles.themeData().primaryColorLight,
                    fontSize: size.height * 0.020,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              Text(
                model.userPhoneNumber!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.nunito(
                    color: MyStyles.themeData().primaryColorLight,
                    fontSize: size.height * 0.020,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget optionsRowWidget({
    AccountViewModel? model,
    bool switchValue = false,
    bool isSwitch = false,
    BuildContext? context,
    required Size size,
    required String optionTitle,
    IconData? icon,
    Function? switchFunc,
    GestureTapCallback? onTap,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: MyStyles.themeData().primaryColor,
          size: size.height * 0.030,
        ),
        SizedBox(
          width: size.width * 0.030,
        ),
        Text(
          optionTitle,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: GoogleFonts.nunito(
              color: MyStyles.themeData().highlightColor,
              fontSize: size.height * 0.026,
              fontWeight: FontWeight.bold),
        ),
        Spacer(),
        isSwitch == false
            ? IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: MyStyles.themeData().highlightColor,
                  size: size.height * 0.025,
                ),
              )
            : Switch(
                value: switchValue,
                onChanged: (bool value) => model!.setSwitchValue(value),
                activeColor: MyStyles.themeData().primaryColor,
              )
      ],
    );
  }
}
