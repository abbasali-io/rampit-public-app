import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchViewModel extends BaseViewModel {
  final NavigationService nav = locator<NavigationService>();

 navigateToPage({ required int pageIndex}) {
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
  Future<void> init() async {}
}
