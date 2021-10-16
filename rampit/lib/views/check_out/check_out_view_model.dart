import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class CheckOutViewModel extends BaseViewModel {
  Logger log;

  CheckOutViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
