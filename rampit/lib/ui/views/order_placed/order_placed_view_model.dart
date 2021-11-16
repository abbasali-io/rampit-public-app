import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrderPlacedViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();

  goToHomePage() {
    _nav.navigateTo(Routes.homeView);
  }
  Future<void> init() async {}
}
