import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class ClosedViewModel extends BaseViewModel {
  Logger log;

  ClosedViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
