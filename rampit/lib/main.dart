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

// void configLoading() {
//   EasyLoading.instance
//     ..indicatorWidget = Text('data')
//     ..displayDuration = Duration(milliseconds: 9000)
//     ..loadingStyle = EasyLoadingStyle.custom
//     ..indicatorType = EasyLoadingIndicatorType.chasingDots
//     ..indicatorSize = 45.0
//     ..indicatorColor = Colors.blue
//     ..progressColor = Colors.blue
//     ..backgroundColor = Colors.yellow.withOpacity(0.25)
//     ..textColor = Colors.black
//     ..maskType = EasyLoadingMaskType.custom
//     ..maskColor = Colors.yellow.withOpacity(0.25)
//     ..dismissOnTap = false;
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LiquidApp(
      materialApp: MaterialApp(
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.Router.generateRoute,
        initialRoute: onBoardingViewRoute,
      )
    );
  }
}
