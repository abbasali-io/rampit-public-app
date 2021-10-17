import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class CheckOutViewModel extends BaseViewModel {
  Logger log;
  NavigationService _nav = locator<NavigationService>();

  CheckOutViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }

  goToOrderPlacedPage() {
    this._nav.navigateTo(orderPlacedViewRoute);
  }
}