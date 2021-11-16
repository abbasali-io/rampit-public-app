// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/account/account_view.dart';
import '../ui/views/address/address_view.dart';
import '../ui/views/category/category_view.dart';
import '../ui/views/check_out/check_out_view.dart';
import '../ui/views/confirm_order_place/confirm_order_place_view.dart';
import '../ui/views/delivery_confirm/delivery_confirm_view.dart';
import '../ui/views/faq/faq_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/my_cart/my_cart_view.dart';
import '../ui/views/my_order/my_order_view.dart';
import '../ui/views/on_boarding/on_boarding_view.dart';
import '../ui/views/order_details/order_details_view.dart';
import '../ui/views/order_placed/order_placed_view.dart';
import '../ui/views/product/product_view.dart';
import '../ui/views/rating/rating_view.dart';
import '../ui/views/registration/registration_view.dart';
import '../ui/views/search/search_view.dart';
import '../ui/views/support/support_view.dart';
import '../ui/views/track_order/track_order_view.dart';

class Routes {
  static const String onBoardingView = '/on-boarding-view';
  static const String registrationView = '/registration-view';
  static const String addressView = '/address-view';
  static const String deliveryConfirmView = '/delivery-confirm-view';
  static const String homeView = '/';
  static const String categoryView = '/category-view';
  static const String productView = '/product-view';
  static const String myCartView = '/my-cart-view';
  static const String confirmOrderPlaceView = '/confirm-order-place-view';
  static const String checkOutView = '/check-out-view';
  static const String orderPlacedView = '/order-placed-view';
  static const String searchView = '/search-view';
  static const String myOrderView = '/my-order-view';
  static const String orderDetailsView = '/order-details-view';
  static const String trackOrderView = '/track-order-view';
  static const String ratingView = '/rating-view';
  static const String accountView = '/account-view';
  static const String supportView = '/support-view';
  static const String faqView = '/faq-view';
  static const all = <String>{
    onBoardingView,
    registrationView,
    addressView,
    deliveryConfirmView,
    homeView,
    categoryView,
    productView,
    myCartView,
    confirmOrderPlaceView,
    checkOutView,
    orderPlacedView,
    searchView,
    myOrderView,
    orderDetailsView,
    trackOrderView,
    ratingView,
    accountView,
    supportView,
    faqView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onBoardingView, page: OnBoardingView),
    RouteDef(Routes.registrationView, page: RegistrationView),
    RouteDef(Routes.addressView, page: AddressView),
    RouteDef(Routes.deliveryConfirmView, page: DeliveryConfirmView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.categoryView, page: CategoryView),
    RouteDef(Routes.productView, page: ProductView),
    RouteDef(Routes.myCartView, page: MyCartView),
    RouteDef(Routes.confirmOrderPlaceView, page: ConfirmOrderPlaceView),
    RouteDef(Routes.checkOutView, page: CheckOutView),
    RouteDef(Routes.orderPlacedView, page: OrderPlacedView),
    RouteDef(Routes.searchView, page: SearchView),
    RouteDef(Routes.myOrderView, page: MyOrderView),
    RouteDef(Routes.orderDetailsView, page: OrderDetailsView),
    RouteDef(Routes.trackOrderView, page: TrackOrderView),
    RouteDef(Routes.ratingView, page: RatingView),
    RouteDef(Routes.accountView, page: AccountView),
    RouteDef(Routes.supportView, page: SupportView),
    RouteDef(Routes.faqView, page: FaqView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    OnBoardingView: (data) {
      var args = data.getArgs<OnBoardingViewArguments>(
        orElse: () => OnBoardingViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingView(key: args.key),
        settings: data,
      );
    },
    RegistrationView: (data) {
      var args = data.getArgs<RegistrationViewArguments>(
        orElse: () => RegistrationViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegistrationView(key: args.key),
        settings: data,
      );
    },
    AddressView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddressView(),
        settings: data,
      );
    },
    DeliveryConfirmView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DeliveryConfirmView(),
        settings: data,
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    CategoryView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CategoryView(),
        settings: data,
      );
    },
    ProductView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductView(),
        settings: data,
      );
    },
    MyCartView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyCartView(),
        settings: data,
      );
    },
    ConfirmOrderPlaceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConfirmOrderPlaceView(),
        settings: data,
      );
    },
    CheckOutView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CheckOutView(),
        settings: data,
      );
    },
    OrderPlacedView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrderPlacedView(),
        settings: data,
      );
    },
    SearchView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchView(),
        settings: data,
      );
    },
    MyOrderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyOrderView(),
        settings: data,
      );
    },
    OrderDetailsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OrderDetailsView(),
        settings: data,
      );
    },
    TrackOrderView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TrackOrderView(),
        settings: data,
      );
    },
    RatingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RatingView(),
        settings: data,
      );
    },
    AccountView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AccountView(),
        settings: data,
      );
    },
    SupportView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SupportView(),
        settings: data,
      );
    },
    FaqView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FaqView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OnBoardingView arguments holder class
class OnBoardingViewArguments {
  final Key? key;
  OnBoardingViewArguments({this.key});
}

/// RegistrationView arguments holder class
class RegistrationViewArguments {
  final Key? key;
  RegistrationViewArguments({this.key});
}

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}
