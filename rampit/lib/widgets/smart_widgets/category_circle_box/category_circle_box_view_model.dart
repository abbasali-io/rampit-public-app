import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class CategoryCircleBoxViewModel extends BaseViewModel {
  Logger log;

  CategoryCircleBoxViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
