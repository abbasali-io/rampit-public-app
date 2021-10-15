import 'package:stacked/stacked.dart';

class DeliveryConfirmViewModel extends BaseViewModel {

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
}
