import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:rampit/core/services/product.service.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class MyCartViewModel extends BaseViewModel {
  Logger log;
  ProductService _prod = locator<ProductService>();
  NavigationService _nav = locator<NavigationService>();

  MyCartViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }

  goToProductPage(
      {@required String imagePath,
      @required String heading2,
      @required String heading1,
      @required String description}) {
    this._prod.imagePath = imagePath;
    this._prod.heading2 = heading2;
    this._prod.heading1 = heading1;
    this._prod.description = description;
    this._nav.navigateTo(productViewRoute);
  }
}
