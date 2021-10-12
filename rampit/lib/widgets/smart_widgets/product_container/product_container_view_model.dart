import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class ProductContainerViewModel extends BaseViewModel {
  Logger log;

  int _productCounter;
  int get productCounter => this._productCounter;
  set productCounter(int value) {
    this._productCounter = value;
    notifyListeners();
  }

  ProductContainerViewModel() {
    this.log = getLogger(this.runtimeType.toString());
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
