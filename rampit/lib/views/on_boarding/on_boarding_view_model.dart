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
      'title': '5 Mins\n',
      'text': 'Delivery',
      'subtitle': 'Actually, choose between Super fast\ndelivery (5 minutes) and Super Faster\ndelivery (15 minutes)!!\n',
      'image': 'assets/images/wayConcept.png'
    },
    {
      'title': 'Empower your\n',
      'text': 'community',
      'subtitle':
          'Speed = we have to be close to you.\nDeliverer will likely come from your\ncommunity!\n',
      'image': 'assets/images/OnlineGrocery.png'
    },
     
    {
      'title': '',
      'text': 'Reliability',
      'subtitle':
          'why stock up things if you can get it\ndelivered when you need them?\n',
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
    _nav.navigateTo(registrationViewRoute);
  }
}
