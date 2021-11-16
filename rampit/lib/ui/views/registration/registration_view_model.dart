// ignore_for_file: unused_field

import 'package:rampit/app/app.locator.dart';
import 'package:rampit/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegistrationViewModel extends BaseViewModel {
   final NavigationService _nav = locator<NavigationService>();


   void signInWithGoogle() async {
    _nav.navigateTo(Routes.addressView);
    // try {
    //   var userCredential = await this._auth.signInWithGoogle();
    //   log!.wtf(userCredential.user!.uid);
    //   await _nav!.navigateToName('setProfile');
    // } catch (e) {
    //   log!.wtf(e);
    // }
  }

  Future<void> init() async {}
}
