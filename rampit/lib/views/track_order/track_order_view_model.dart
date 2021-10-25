import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class TrackOrderViewModel extends BaseViewModel {
  Logger log;
  NavigationService _nav = locator<NavigationService>();

  TrackOrderViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }

  goToHomePage() {
    this._nav.navigateTo(homeViewRoute);
  }
}
