import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountViewModel extends BaseViewModel {
  final NavigationService nav = locator<NavigationService>();

  bool? _switchValue;
  bool? get switchValue => _switchValue;

  String? _userImage;
  String? get userImage => _userImage;

  String? _userName;
  String? get userName => _userName;

  String? _userEmailId;
  String? get userEmailId => _userEmailId;

  String? _userAddress;
  String? get userAddress => _userAddress;

  String? _userPhoneNumber;
  String? get userPhoneNumber => _userPhoneNumber;

  AccountViewModel() {
    _userName = 'John Doe';
    _userEmailId = 'johndoe@gmail.com';
    _userImage = 'assets/images/avatar.png';
    _userAddress = '1024, Central Residency Road \nProvince, City postal code';
    _userPhoneNumber = '+775487941125';
    _switchValue = false;
    notifyListeners();
  }

  //methods
  void goToEditPage() {
    //this.nav.navigateTo('');
  }

  void goToSupport() {
    nav.navigateTo(Routes.supportView);
  }

  void goToSetting() {
    //this.nav.navigateTo('setting');
  }

  void goToAddress() {
    //this.nav.navigateTo('savedAddress');
  }

  void setSwitchValue(value) {
    _switchValue = value;
    notifyListeners();
  }

  navigateToPage({required int pageIndex}) {
    switch (pageIndex) {
      case 0:
        {
          nav.navigateTo(Routes.homeView);
          break;
        }
      case 1:
        {
          nav.navigateTo(Routes.myOrderView);
          break;
        }
      case 2:
        {
          nav.navigateTo(Routes.searchView);
          break;
        }
      case 3:
        {
          nav.navigateTo(Routes.accountView);
          break;
        }
      case 5:
        {
          nav.navigateTo(Routes.myCartView);
          break;
        }
      default:
        {
          nav.navigateTo(Routes.homeView);
        }
    }
  }

  Future<void> init() async {}
}
