import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrderDetailsViewModel extends BaseViewModel {
  final NavigationService _nav = locator<NavigationService>();

  String? _orderNo;
  String? get orderNo => _orderNo;

  String? _totalAmount;
  String? get totalAmount => _totalAmount;

  String? _driverName;
  String? get driverName => _driverName;

  String? _driverImageUrl;
  String? get driverImageUrl => _driverImageUrl;

  String? _userName;
  String? get userName => _userName;

  String? _userAddress;
  String? get userAddress => _userAddress;

  String? _userPhoneNumber;
  String? get userPhoneNumber => _userPhoneNumber;

  List<Map<String, String>>? _productData;
  List<Map<String, String>>? get productData => _productData;

  OrderDetailsViewModel() {
    _orderNo = '128235423701605';
    _totalAmount = '1450';
    _driverName = 'Goerge Timber';
    _driverImageUrl = 'assets/images/avatar.png';
    _userName = 'John Doe';
    _userAddress =
        '1024, Central Residency Hemilton Road\nProvince, City\npostal code';
    _userPhoneNumber = '+325487941125';
    _productData = [
      {
        'productId': '0',
        'productTitle': 'Fresh Red Tomatoes',
        'image': 'assets/images/tomato.png',
        'quantity': '2 x 1Kg',
        'productPrice': '680',
      },
      {
        'productId': '1',
        'productTitle': 'Fresh Broccoli',
        'image': 'assets/images/broccoli.png',
        'quantity': '3 x 1Kg',
        'productPrice': '1280',
      },
      {
        'productId': '2',
        'productTitle': 'Fresh Capsicum',
        'image': 'assets/images/capsicum.png',
        'quantity': '5 x 1Kg',
        'productPrice': '186',
      },
      {
        'productId': '3',
        'productTitle': 'Fresh Carrots',
        'image': 'assets/images/carrots.png',
        'quantity': '1 x 1Kg',
        'productPrice': '400',
      },
      {
        'productId': '4',
        'productTitle': 'CauliFlower',
        'image': 'assets/images/cauliflower.png',
        'quantity': '1 x 3Kg',
        'productPrice': '800',
      },
      {
        'productId': '6',
        'productTitle': 'Appricot',
        'image': 'assets/images/apricot.png',
        'quantity': '10 x 1Kg',
        'productPrice': '680',
      },
      {
        'productId': '7',
        'productTitle': 'Avacado',
        'image': 'assets/images/avacado.png',
        'quantity': '7 x 1Kg',
        'productPrice': '889',
      },
    ];
    notifyListeners();
  }

  void goBack() {

  }

  void goToTimeline() {
    _nav.navigateTo(Routes.trackOrderView);
  }

  Future<void> init() async {}
}
