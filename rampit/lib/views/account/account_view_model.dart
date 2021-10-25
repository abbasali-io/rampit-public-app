import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountViewModel extends BaseViewModel {
  Logger log;
  NavigationService nav = locator<NavigationService>();

  bool _switchValue;
  bool get switchValue => this._switchValue;
  set switchValue(bool value) {
    this._switchValue = value;
    notifyListeners();
  }

  String _userImage;
  String get userImage => this._userImage;
  set userImage(String value) {
    this._userImage = value;
    notifyListeners();
  }

  String _userName;
  String get userName => this._userName;
  set userName(String value) {
    this._userName = value;
    notifyListeners();
  }

  String _userEmailId;
  String get userEmailId => this._userEmailId;
  set userEmailId(String value) {
    this._userEmailId = value;
    notifyListeners();
  }

  String _userAddress;
  String get userAddress => this._userAddress;
  set userAddress(String value) {
    this._userAddress = value;
    notifyListeners();
  }

  String _userPhoneNumber;
  String get userPhoneNumber => this._userPhoneNumber;
  set userPhoneNumber(String value) {
    this._userPhoneNumber = value;
    notifyListeners();
  }

  AccountViewModel() {
    this.userName = 'John Doe';
    this.userEmailId = 'johndoe@gmail.com';
    this.userImage = 'assets/images/avatar.png';
    this.userAddress =
        '1024, Central Residency Road \nProvince, City postal code';
    this.userPhoneNumber = '+775487941125';
    this.switchValue = false;
  }

  //methods
  void goToEditPage() {
    //this.nav.navigateTo('');
  }

  void goToSupport() {
    this.nav.navigateTo(supportViewRoute);
  }

  void goToSetting() {
    //this.nav.navigateTo('setting');
  }

  void goToAddress() {
    //this.nav.navigateTo('savedAddress');
  }

  navigateToPage({@required int pageIndex}) {
    switch (pageIndex) {
      case 0:
        {
          nav.navigateTo(homeViewRoute);
          break;
        }
      case 1:
        {
          nav.navigateTo(myOrderViewRoute);
          break;
        }
      case 2:
        {
          nav.navigateTo(searchViewRoute);
          break;
        }
      case 3:
        {
          nav.navigateTo(accountViewRoute);
          break;
        }
      case 5:
        {
          nav.navigateTo(myCartViewRoute);
          break;
        }
      default:
        {
          nav.navigateTo(homeViewRoute);
        }
    }
  }
}
