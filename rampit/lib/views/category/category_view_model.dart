import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:rampit/core/logger.dart';

class CategoryViewModel extends BaseViewModel {
  Logger log;

  CategoryViewModel() {
    this.log = getLogger(this.runtimeType.toString());
  }
}
