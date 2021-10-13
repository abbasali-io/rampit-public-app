import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/services/product.service.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class ProductViewModel extends BaseViewModel {
  Logger log;

  ProductService prod = locator<ProductService>();

  int _productCounter;
  int get productCounter => this._productCounter;
  set productCounter(int value) {
    this._productCounter = value;
    notifyListeners();
  }

  ProductViewModel() {
    log = getLogger(this.runtimeType.toString());
    this.productCounter = 0;
  }

  void productIncrement() {
    this.productCounter++;
  }

  void productDecrement() {
    this.productCounter--;
    if (this.productCounter < 0) {
      this.productCounter = 0;
    }
  }
}
