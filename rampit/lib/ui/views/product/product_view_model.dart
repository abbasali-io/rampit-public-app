import 'package:rampit/app/app.locator.dart';
import 'package:rampit/services/product.service.dart';
import 'package:stacked/stacked.dart';

class ProductViewModel extends BaseViewModel {
  final ProductService prod = locator<ProductService>();

  int? _productCounter;
  int? get productCounter => _productCounter;

  ProductViewModel() {
    _productCounter = 0;
    notifyListeners();
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

  Future<void> init() async {}
}
