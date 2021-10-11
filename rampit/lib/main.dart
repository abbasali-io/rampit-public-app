import 'package:flutter/material.dart';
import 'package:liquid_ui/liquid_ui.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;

void main() async {
  await LocatorInjector.setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LiquidApp(
      // liquidTheme: LiquidThemeData(
      //   colors: LiquidColors(
      //     white: Color.fromRGBO(229,229,229,1),
      //     primary: Color.fromRGBO(255, 1, 1, 1),
      //     secondary: Color.fromRGBO(235, 235, 235, 1),
      //     info: Color.fromRGBO(0, 0, 0, 1)
      //   ),
      // ),
      materialApp: MaterialApp(
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.Router.generateRoute,
        initialRoute: addressViewRoute,
      )
    );
  }
}
