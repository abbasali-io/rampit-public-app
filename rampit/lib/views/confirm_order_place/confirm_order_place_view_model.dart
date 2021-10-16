import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class ConfirmOrderPlaceViewModel extends BaseViewModel {
  Logger log;
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

  ConfirmOrderPlaceViewModel() {
    this.log = getLogger(this.runtimeType.toString());
    this.radioBtnValues = [
      'Leave at the door',
      'Meet me at door',
      'Meet outside',
      'Meet at guard house',
    ];
    this.selectedValue = '';
  }

  void goToCheckOutPage() {
    this._nav.navigateTo('');
  }
}
