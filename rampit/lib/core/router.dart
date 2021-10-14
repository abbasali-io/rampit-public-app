// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:rampit/core/router_constants.dart';

import 'package:rampit/views/address/address_view.dart' as view0;
import 'package:rampit/views/closed/closed_view.dart' as view1;
import 'package:rampit/views/home/home_view.dart' as view2;
import 'package:rampit/views/category/category_view.dart' as view3;
import 'package:rampit/views/product/product_view.dart' as view4;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case addressViewRoute:
        return MaterialPageRoute(builder: (_) => view0.AddressView());
      case closedViewRoute:
        return MaterialPageRoute(builder: (_) => view1.ClosedView());
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => view2.HomeView());
      case categoryViewRoute:
        return MaterialPageRoute(builder: (_) => view3.CategoryView());
      case productViewRoute:
        return MaterialPageRoute(builder: (_) => view4.ProductView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}