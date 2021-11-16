// ignore_for_file: prefer_final_fields, empty_statements

import 'package:flutter/material.dart';
import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:rampit/theme/styles.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddressViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();

  Color? _homeButton = MyStyles.themeData().primaryColorLight;
  Color? get homeButton => _homeButton;

  Color _officeButton = MyStyles.themeData().primaryColorLight;
  Color get officeButton => _officeButton;

  String _selectedAddress = '';
  String get selectedAddress => _selectedAddress;

  List<String> _states = [
    'Kuala Lumpur',
    'Selangor',
  ];
  List<String> get states => _states;

  List<String> _areas = [
    'Ampang',
    'Batu Caves',
    'Cheras',
    'Damansara',
    'Gombak',
    'Hulu Kelang',
    'Kepong',
    'Kuala Lumpur',
    'Petaling',
    'Petaling Jaya',
    'Sentul',
    'Setapak',
    'Sungai Besi',
  ];
  List<String> get areas => _areas;

  String _selectedState = 'Kuala Lumpur';
  String get selectedState => _selectedState;

  String _selectedArea = 'Ampang';
  String get selectedArea => _selectedArea;

  AddressViewModel() {
    ;
  }

  setSelectedArea(String? value) {
    _selectedArea = value!;
    notifyListeners();
  }

  void goToConfirmDeliveryPage() {
    _nav.navigateTo(Routes.deliveryConfirmView);
  }

  selectState({String? value}) {
    if (value == 'Kuala Lumpur') {
      _selectedState = value!;
      notifyListeners();
      _selectedArea = 'Ampang';
      notifyListeners();
      _areas = [
        'Ampang',
        'Batu Caves',
        'Cheras',
        'Damansara',
        'Gombak',
        'Hulu Kelang',
        'Kepong',
        'Kuala Lumpur',
        'Petaling',
        'Petaling Jaya',
        'Sentul',
        'Setapak',
        'Sungai Besi',
      ];
      notifyListeners();
    } else {
      _selectedState = value!;
      notifyListeners();
      _selectedArea = 'Ampang';
      notifyListeners();
      _areas = [
        'Ampang',
        'Bandar Baru Bangi',
        'Bandar Puncak Alam',
        'Banting',
        'Batang Kali',
        'Batu Arang',
        'Batu Caves',
        'Beranang',
        'Bestari Jaya',
        'Bukit Rotan',
        'Cheras'
            'Cyberjaya',
        'Dengkil',
        'Hulu Langat',
        'Jenjarom',
      ];
      notifyListeners();
    }
  }

  buttonColorChange({String? value}) {
    if (value == 'Office') {
      _selectedAddress = value!;
      notifyListeners();
      _homeButton = MyStyles.themeData().primaryColorLight;
      notifyListeners();
      _officeButton = MyStyles.themeData().primaryColor;
      notifyListeners();
    } else if (value == 'Home') {
      _selectedAddress = value!;
      notifyListeners();
      _homeButton = MyStyles.themeData().primaryColor;
      notifyListeners();
      _officeButton = MyStyles.themeData().primaryColorLight;
      notifyListeners();
    }
  }

  Future<void> init() async {}
}
