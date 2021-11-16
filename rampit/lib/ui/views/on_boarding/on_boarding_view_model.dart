// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.logger.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnBoardingViewModel extends BaseViewModel {
//imports

  final _log = getLogger('OnBoardingViewModel');
  final NavigationService _nav = locator<NavigationService>();

  PageController? controller;

  int? _currentPage = 0;
  int? get currentPage => _currentPage;
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
    controller = PageController(initialPage: 0);
  }

  //public function
  void pageUpdate() {
    if (controller!.hasClients) {
        controller!.animateToPage(controller!.page!.toInt() + 1,
          duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
    }
  }

  void pageIndexUpdate(int value) {
    _currentPage = value;
    notifyListeners();
  }

  void goToRegisterPage() {
    _nav.navigateTo(Routes.registrationView);
  }

//public function

  Future<void> init() async {}

//private function
}
