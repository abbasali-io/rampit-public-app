import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DeliveryConfirmViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();

  List<String>? _radioBtnValues;
  List<String>? get radioBtnValues => _radioBtnValues;

  String? _selectedValue;
  String? get selectedValue => _selectedValue;

  DeliveryConfirmViewModel() {
    _radioBtnValues = [
      '5',
      '15',
    ];
    _selectedValue = '';
    notifyListeners();
  }

  setSelectedValue(String? value) {
    _selectedValue = value;
    notifyListeners();
  }

  goToHomePage() {
    _nav.navigateTo(Routes.homeView);
  }

  Future<void> init() async {}
}
