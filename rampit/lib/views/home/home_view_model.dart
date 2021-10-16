import 'package:flutter/material.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  NavigationService nav = locator<NavigationService>();

  HomeViewModel() {
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
          nav.navigateTo(myCartViewRoute);
          break;
        }
      default:
        {
          nav.navigateTo(homeViewRoute);
        }
    }
  }
}
