import 'package:flutter/material.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyOrderViewModel extends BaseViewModel {
  //imports
  NavigationService nav = locator<NavigationService>();

  //properties
  final controller = PageController();
  int _currentOrderContainer;
  int get currentOrderContainer => this._currentOrderContainer;
  set currentOrderContainer(int value) {
    this._currentOrderContainer = value;
    notifyListeners();
  }

  String _categoryImage;
  String get categoryImage => this._categoryImage;
  set categoryImage(String value) {
    this._categoryImage = value;
    notifyListeners();
  }

  MyOrderViewModel() {
    this.categoryImage = 'assets/images/categoryImage.png';
    
  }

  void goToOrderDetail(String docId) {
    
  }

  void goToRating(String docId) {
    
  }

  Future<String> getData() async {
    try {
      this.categoryImage = 'assets/categories/1.svg';
    } catch (e) {
      print(e);
    }
    return 'success';
  }
  navigateToPage({@required int pageIndex}) {
    switch (pageIndex) {
      case 0:
        {
          nav.navigateTo(homeViewRoute);
          break;
        }
        case 1:
        {
          nav.navigateTo(myOrderViewRoute);
          break;
        }
      case 2:
        {
          nav.navigateTo(searchViewRoute);
          break;
        }
      case 5:
        {
          nav.navigateTo(myCartViewRoute);
          break;
        }
      default:
        {
          nav.navigateTo(homeViewRoute);
        }
    }
  }

  // Add ViewModel specific code here
}
