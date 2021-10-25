import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchViewModel extends BaseViewModel {
  Logger log;
  NavigationService nav = locator<NavigationService>();

  SearchViewModel() {
    this.log = getLogger(this.runtimeType.toString());
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
      case 3:
        {
          nav.navigateTo(accountViewRoute);
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
}
