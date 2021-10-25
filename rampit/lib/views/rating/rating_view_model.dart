import 'package:rampit/core/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RatingViewModel extends BaseViewModel {

  NavigationService nav = locator<NavigationService>();

  String _storeImage;
  String get storeImage => this._storeImage;
  set storeImage(String value) {
    this._storeImage = value;
    notifyListeners();
  }

  String _productCategory;
  String get productCategory => this._productCategory;
  set productCategory(String value) {
    this._productCategory = value;
    notifyListeners();
  }

  RatingViewModel() {
    this.storeImage = 'assets/images/rate.png';
    this.productCategory = 'Vegetables and Fruits';
  }

}
