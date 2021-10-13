import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:rampit/core/services/product.service.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class ProductContainerViewModel extends BaseViewModel {
  Logger log;
  NavigationService _nav = locator<NavigationService>();
  ProductService _prod = locator<ProductService>();

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

  goToProductViewPage({
    @required String imagePath,
    @required String heading1,
    @required String heading2,
    @required String description,
  }) {
    this._prod.imagePath = imagePath;
    this._prod.heading1 = heading1;
    this._prod.heading2 = heading2;
    this._prod.description = description;
    this._nav.navigateTo(productViewRoute);
  }
}
