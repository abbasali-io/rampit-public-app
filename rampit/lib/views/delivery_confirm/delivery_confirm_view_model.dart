import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DeliveryConfirmViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();

  List<String> _radioBtnValues;
  List<String> get radioBtnValues => this._radioBtnValues;
  set radioBtnValues(List<String> value) {
    this._radioBtnValues = value;
    notifyListeners();
  }

  String _selectedValue;
  String get selectedValue => this._selectedValue;
  set selectedValue(String value) {
    this._selectedValue = value;
    notifyListeners();
  }

  DeliveryConfirmViewModel() {
    this.radioBtnValues = [
      '5',
      '15',
    ];
    this.selectedValue = '';
  }

  goToHomePage() {
    this._nav.navigateTo(homeViewRoute);
  }
}
