// ignore_for_file: empty_statements, unused_field

import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:rampit/services/product.service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductContainerWidgetModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();
  final ProductService _prod = locator<ProductService>();

  int? _productCounter = 0;
  int? get productCounter => _productCounter;

  ProductContainerWidgetModel() {
    ;
  }

  void productIncrement() {
    _productCounter = _productCounter! + 1;
    notifyListeners();
  }

  void productDecrement() {
    _productCounter = _productCounter! - 1;
    notifyListeners();
    if (_productCounter! < 0) {
      _productCounter = 0;
      notifyListeners();
    }
  }

  goToProductViewPage({
    required String imagePath,
    required String heading1,
    required String heading2,
    required String description,
  }) {
    _prod.imagePath = imagePath;
    _prod.heading1 = heading1;
    _prod.heading2 = heading2;
    _prod.description = description;
    _nav.navigateTo(Routes.productView);
  }

  Future<void> init() async {}
}
