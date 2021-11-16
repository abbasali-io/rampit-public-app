// ignore_for_file: empty_statements

import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:rampit/services/product.service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyCartViewModel extends BaseViewModel {
  final ProductService _prod = locator<ProductService>();
  final NavigationService _nav = locator<NavigationService>();

  goToProductPage(
      {required String imagePath,
      required String heading2,
      required String heading1,
      required String description}) {
    _prod.imagePath = imagePath;
    _prod.heading2 = heading2;
    _prod.heading1 = heading1;
    _prod.description = description;
    _nav.navigateTo(Routes.productView);
  }

  goToConfirmOrderPlace() {
    _nav.navigateTo(Routes.homeView);
  }
  Future<void> init() async {}
}
