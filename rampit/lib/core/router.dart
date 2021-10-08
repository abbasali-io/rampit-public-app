// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:rampit/core/router_constants.dart';

import 'package:rampit/views/address/address_view.dart' as view0;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case addressViewRoute:
        return MaterialPageRoute(builder: (_) => view0.AddressView());
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