import '../../core/base/base_service.dart';

class ProductService extends BaseService {

  String _imagePath;
  String get imagePath => this._imagePath;
  set imagePath(String value) {
    this._imagePath = value;
  }

  String _description;
  String get description => this._description;
  set description(String value) {
    this._description = value;
  }
   
  

  String _heading1;
  String get heading1 => this._heading1;
  set heading1(String value) {
    this._heading1 = value;
  }
   
  String _heading2;
  String get heading2 => this._heading2;
  set heading2(String value) {
    this._heading2 = value;
  }
  
  ProductService() {
  }
}
