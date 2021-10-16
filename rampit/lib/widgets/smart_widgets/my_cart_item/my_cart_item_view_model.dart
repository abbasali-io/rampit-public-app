import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class MyCartItemViewModel extends BaseViewModel {
  Logger log;

  MyCartItemViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
