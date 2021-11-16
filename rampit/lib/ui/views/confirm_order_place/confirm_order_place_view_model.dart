import 'package:stacked/stacked.dart';

class ConfirmOrderPlaceViewModel extends BaseViewModel {
  //final NavigationService _nav = locator<NavigationService>();

  List<String>? _radioBtnValues;
  List<String>? get radioBtnValues => _radioBtnValues;

  String? _selectedValue;
  String? get selectedValue => _selectedValue;

  ConfirmOrderPlaceViewModel() {
    _radioBtnValues = [
      'Leave at the door',
      'Meet me at door',
      'Meet outside',
      'Meet at guard house',
    ];
    _selectedValue = '';
    notifyListeners();
  }

  // void goToCheckOutPage() {
  //   if (_selectedValue!.isNotEmpty) {
  //   _nav.navigateTo(checkOutViewRoute);
  //   }
  // }

  setSelectedValue(String? value) {
    _selectedValue = value;
    notifyListeners();
  }

  Future<void> init() async {}
}
