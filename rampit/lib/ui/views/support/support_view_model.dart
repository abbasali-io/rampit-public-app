import 'package:rampit/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SupportViewModel extends BaseViewModel {
  final NavigationService nav = locator<NavigationService>();
  Future<void> init() async {}
}
