import 'package:rampit/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RatingViewModel extends BaseViewModel {
  final NavigationService nav = locator<NavigationService>();

  String? _storeImage;
  String? get storeImage => _storeImage;

  String? _productCategory;
  String? get productCategory => _productCategory;

  RatingViewModel() {
    _storeImage = 'assets/images/rate.png';
    _productCategory = 'Vegetables and Fruits';
  }
  Future<void> init() async {}
}
