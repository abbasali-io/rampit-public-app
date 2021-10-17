// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:rampit/core/router_constants.dart';

import 'package:rampit/views/address/address_view.dart' as view0;
import 'package:rampit/views/closed/closed_view.dart' as view1;
import 'package:rampit/views/home/home_view.dart' as view2;
import 'package:rampit/views/category/category_view.dart' as view3;
import 'package:rampit/views/product/product_view.dart' as view4;
import 'package:rampit/views/delivery_confirm/delivery_confirm_view.dart' as view5;
import 'package:rampit/views/my_cart/my_cart_view.dart' as view6;
import 'package:rampit/views/confirm_order_place/confirm_order_place_view.dart' as view7;
import 'package:rampit/views/check_out/check_out_view.dart' as view8;
import 'package:rampit/views/order_placed/order_placed_view.dart' as view9;
import 'package:rampit/views/search/search_view.dart' as view10;

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
      case deliveryConfirmViewRoute:
        return MaterialPageRoute(builder: (_) => view5.DeliveryConfirmView());
      case myCartViewRoute:
        return MaterialPageRoute(builder: (_) => view6.MyCartView());
      case confirmOrderPlaceViewRoute:
        return MaterialPageRoute(builder: (_) => view7.ConfirmOrderPlaceView());
      case checkOutViewRoute:
        return MaterialPageRoute(builder: (_) => view8.CheckOutView());
      case orderPlacedViewRoute:
        return MaterialPageRoute(builder: (_) => view9.OrderPlacedView());
      case searchViewRoute:
        return MaterialPageRoute(builder: (_) => view10.SearchView());
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