import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class SupportViewModel extends BaseViewModel {
  Logger log;
  NavigationService nav = locator<NavigationService>();

  SupportViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
