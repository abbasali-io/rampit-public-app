import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrderDetailsViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();

  String _orderNo;
  String get orderNo => this._orderNo;
  set orderNo(String value) {
    this._orderNo = value;
    notifyListeners();
  }

  String _totalAmount;
  String get totalAmount => this._totalAmount;
  set totalAmount(String value) {
    this._totalAmount = value;
    notifyListeners();
  }

  String _driverName;
  String get driverName => this._driverName;
  set driverName(String value) {
    this._driverName = value;
    notifyListeners();
  }

  String _driverImageUrl;
  String get driverImageUrl => this._driverImageUrl;
  set driverImageUrl(String value) {
    this._driverImageUrl = value;
    notifyListeners();
  }

  String _userName;
  String get userName => this._userName;
  set userName(String value) {
    this._userName = value;
    notifyListeners();
  }

  String _userAddress;
  String get userAddress => this._userAddress;
  set userAddress(String value) {
    this._userAddress = value;
    notifyListeners();
  }

  String _userPhoneNumber;
  String get userPhoneNumber => this._userPhoneNumber;
  set userPhoneNumber(String value) {
    this._userPhoneNumber = value;
    notifyListeners();
  }

  List<Map<String,String>> _productData;
  List<Map<String,String>> get productData => this._productData;
  set productData(List<Map<String,String>> value) {
  this._productData = value;
    notifyListeners();
  }
   
  


  OrderDetailsViewModel(){
    this.orderNo = '128235423701605';
    this.totalAmount = '1450';
    this.driverName = 'Goerge Timber';
    this.driverImageUrl = 'assets/images/avatar.png';
    this.userName = 'John Doe';
    this.userAddress =
        '1024, Central Residency Hemilton Road\nProvince, City\npostal code';
    this.userPhoneNumber = '+325487941125';
    this.productData =  [
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

 

  }

  void goBack() {
    print(_nav.previousRoute);
  }

  void goToTimeline() {
    _nav.navigateTo(trackOrderViewRoute);
  }

  // Add ViewModel specific code here
}
