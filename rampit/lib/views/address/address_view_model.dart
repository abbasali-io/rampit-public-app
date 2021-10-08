import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class AddressViewModel extends BaseViewModel {
  Logger log;

  AddressViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
