import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends BaseViewModel {
  Logger log;
  //imports
  NavigationService _nav = locator<NavigationService>();

  //properties

  PageController controller;

  int _currentPage;
  int get currentPage => _currentPage;
  set currentPage(int value) {
    _currentPage = value;
    notifyListeners();
  }

  // Add ViewModel specific code here
  final List<Map<String, String>> splashData = [
    {
      'title': 'Quality\n',
      'text': 'Product\n',
      'subtitle': '',
      //'Enjoy the freshest produce at Bazaar price. Cheap and good – nothing beats that.',
      'image': 'assets/images/OnlineGrocery.png'
    },
    {
      'title': 'Fast\n',
      'text': 'Delivery\n',
      'subtitle':
          'Save time and stay safe at home. Delivered to you – no need to travel between home and Bazaar.',
      'image': 'assets/images/wayConcept.png'
    },
    {
      'title': 'Easy\n',
      'text': 'Payment\n',
      'subtitle':
          'Manage your household expenses and save money. Easily track all your purchases and enjoy the savings!',
      'image': 'assets/images/creditCard.png'
    },
  ];

  //constructor

  OnBoardingViewModel() {
    this.currentPage = 0;
    this.controller = PageController(initialPage: 0);
  }

  //public function
  void pageUpdate() {
    if (controller.hasClients) {
        this.controller.animateToPage(this.controller.page.toInt() + 1,
          duration: Duration(milliseconds: 400), curve: Curves.easeIn);
    }
  }

  void pageIndexUpdate(int value) {
    this.currentPage = value;
    notifyListeners();
  }

  void goToRegisterPage() {
    _nav.navigateTo(homeViewRoute);
  }
}
