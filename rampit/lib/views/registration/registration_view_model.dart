import 'package:logger/logger.dart';
import 'package:rampit/core/locator.dart';
import 'package:rampit/core/router_constants.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';
import 'package:stacked_services/stacked_services.dart';

class RegistrationViewModel extends BaseViewModel {
  Logger log;
  NavigationService _nav = locator<NavigationService>();

  RegistrationViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }

  void signInWithGoogle() async {
    this._nav.navigateTo(addressViewRoute);
    // try {
    //   var userCredential = await this._auth.signInWithGoogle();
    //   log!.wtf(userCredential.user!.uid);
    //   await _nav!.navigateToName('setProfile');
    // } catch (e) {
    //   log!.wtf(e);
    // }
  }
}
