import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyCartBottomNavWidgetModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  Future<void> init() async {}

  navigateTo(String? viewName) {
    switch (viewName) {
      case 'Check Out':
        _nav.navigateTo(Routes.confirmOrderPlaceView);
        break;
      case 'Next':
        _nav.navigateTo(Routes.checkOutView);
        break;
      case 'Pay Now':
        _nav.navigateTo(Routes.orderPlacedView);
        break;
      case 'Submit Feedback':
        _nav.navigateTo(Routes.homeView);
        break;
      case 'Submit':
        _nav.navigateTo(Routes.accountView);
        break;
      default:
    }
  }
}
