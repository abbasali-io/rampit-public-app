// ignore_for_file: empty_statements

import 'package:flutter/material.dart';
import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyOrderViewModel extends BaseViewModel {
  //imports
  final NavigationService nav = locator<NavigationService>();

  //properties
  final controller = PageController();

  int? _currentOrderContainer;
  int? get currentOrderContainer => _currentOrderContainer;

  String? _categoryImage;
  String? get categoryImage => _categoryImage;

  MyOrderViewModel() {
    _categoryImage = 'assets/images/categoryImage.png';
  }

  void goToOrderDetail(String docId) {
    nav.navigateTo(Routes.orderDetailsView);
  }

  void goToRating(String docId) {
    nav.navigateTo(Routes.ratingView);
  }

  Future<String> getData() async {
    try {
      _categoryImage = 'assets/categories/1.svg';
    } catch (e) {
      ;
    }
    return 'success';
  }

  navigateToPage({required int pageIndex}) {
    switch (pageIndex) {
      case 0:
        {
          nav.navigateTo(Routes.homeView);
          break;
        }
      case 1:
        {
          nav.navigateTo(Routes.myOrderView);
          break;
        }
      case 2:
        {
          nav.navigateTo(Routes.searchView);
          break;
        }
      case 3:
        {
          nav.navigateTo(Routes.accountView);
          break;
        }
      case 5:
        {
          nav.navigateTo(Routes.myCartView);
          break;
        }
      default:
        {
          nav.navigateTo(Routes.homeView);
        }
    }
  }

  setCurrentOrderContainer(int? value) {
    _currentOrderContainer = value;
    notifyListeners();
  }

  Future<void> init() async {}
}
