import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class MyCartViewModel extends BaseViewModel {
  Logger log;

  MyCartViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
