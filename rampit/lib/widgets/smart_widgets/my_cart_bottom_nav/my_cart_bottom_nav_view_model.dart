import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class MyCartBottomNavViewModel extends BaseViewModel {
  Logger log;

  MyCartBottomNavViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
