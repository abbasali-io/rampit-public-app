import 'package:rampit/services/product.service.dart';
import 'package:rampit/ui/views/account/account_view.dart';
import 'package:rampit/ui/views/address/address_view.dart';
import 'package:rampit/ui/views/category/category_view.dart';
import 'package:rampit/ui/views/check_out/check_out_view.dart';
import 'package:rampit/ui/views/confirm_order_place/confirm_order_place_view.dart';
import 'package:rampit/ui/views/delivery_confirm/delivery_confirm_view.dart';
import 'package:rampit/ui/views/faq/faq_view.dart';
import 'package:rampit/ui/views/home/home_view.dart';
import 'package:rampit/ui/views/my_cart/my_cart_view.dart';
import 'package:rampit/ui/views/my_order/my_order_view.dart';
import 'package:rampit/ui/views/on_boarding/on_boarding_view.dart';
import 'package:rampit/ui/views/order_details/order_details_view.dart';
import 'package:rampit/ui/views/order_placed/order_placed_view.dart';
import 'package:rampit/ui/views/product/product_view.dart';
import 'package:rampit/ui/views/rating/rating_view.dart';
import 'package:rampit/ui/views/registration/registration_view.dart';
import 'package:rampit/ui/views/search/search_view.dart';
import 'package:rampit/ui/views/support/support_view.dart';
import 'package:rampit/ui/views/track_order/track_order_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnBoardingView),
    MaterialRoute(page: RegistrationView),
    MaterialRoute(page: AddressView),
    MaterialRoute(page: DeliveryConfirmView),
    MaterialRoute(page: HomeView,  initial: true),
    MaterialRoute(page: CategoryView),
    MaterialRoute(page: ProductView),
    MaterialRoute(page: MyCartView),
    MaterialRoute(page: ConfirmOrderPlaceView),
    MaterialRoute(page: CheckOutView),
    MaterialRoute(page: OrderPlacedView),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: MyOrderView),
    MaterialRoute(page: OrderDetailsView),
    MaterialRoute(page: TrackOrderView),
    MaterialRoute(page: RatingView),
    MaterialRoute(page: AccountView),
    MaterialRoute(page: SupportView),
    MaterialRoute(page: FaqView),
  ],
  dependencies: [
    //Singleton(classType: FirebaseAuthenticationService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: ProductService),
  ],
  logger: StackedLogger(),
)
class AppSetup{}