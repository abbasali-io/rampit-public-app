import 'package:flutter/cupertino.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';

class AddressViewModel extends BaseViewModel {
  Color _homeButton;
  Color get homeButton => this._homeButton;
  set homeButton(Color value) {
    this._homeButton = value;
    notifyListeners();
  }

  Color _officeButton;
  Color get officeButton => this._officeButton;
  set officeButton(Color value) {
    this._officeButton = value;
    notifyListeners();
  }

  String _selectedAddress;
  String get selectedAddress => this._selectedAddress;
  set selectedAddress(String value) {
    this._selectedAddress = value;
    notifyListeners();
  }

  List<String> _states;
  List<String> get states => this._states;
  set states(List<String> value) {
    this._states = value;
    notifyListeners();
  }

  List<String> _areas;
  List<String> get areas => this._areas;
  set areas(List<String> value) {
    this._areas = value;
    notifyListeners();
  }

  String _selectedState;
  String get selectedState => this._selectedState;
  set selectedState(String value) {
    this._selectedState = value;
    notifyListeners();
  }

  String _selectedArea;
  String get selectedArea => this._selectedArea;
  set selectedArea(String value) {
    this._selectedArea = value;
    notifyListeners();
  }

  AddressViewModel() {
    this.homeButton = MyStyles.themeData().primaryColorLight;
    this.officeButton = MyStyles.themeData().primaryColorLight;
    this.selectedAddress = '';
    this.states = [
      'Punjab',
      'Sindh',
      'Serhad',
      'Bolochistan',
    ];
    this.selectedState = 'Punjab';
    this.areas = [
      'Lahore',
      'Multan',
      'Kasur',
      'Haronabad',
    ];
    this.selectedArea = 'Lahore';
  }

  selectState({String value}) {
    if (value == 'Punjab') {
      this.selectedState = value;
      this.selectedArea = 'Lahore';
      this.areas = [
        'Lahore',
        'Multan',
        'Kasur',
        'Haronabad',
      ];
    } else {
      this.selectedState = value;
      this.selectedArea = 'Karachi';
      this.areas = [
        'Karachi',
        'Hydrabad',
      ];
    }
  }

  buttonColorChange({String value}) {
    if (value == 'Office') {
      this.selectedAddress = value;
      this.homeButton = MyStyles.themeData().primaryColorLight;
      this.officeButton = MyStyles.themeData().primaryColor;
    } else if (value == 'Home') {
      this.selectedAddress = value;
      this.homeButton = MyStyles.themeData().primaryColor;
      this.officeButton = MyStyles.themeData().primaryColorLight;
    }
  }
}
