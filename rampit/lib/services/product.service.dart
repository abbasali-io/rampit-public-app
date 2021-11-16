// ignore_for_file: empty_statements

class ProductService {
  String? _imagePath;
  String? get imagePath => _imagePath!;
  set imagePath(String? value) {
    _imagePath = value;
  }

  String? _description;
  String? get description => _description!;
  set description(String? value) {
    _description = value;
  }

  String? _heading1;
  String? get heading1 => _heading1!;
  set heading1(String? value) {
    _heading1 = value;
  }

  String? _heading2;
  String? get heading2 => _heading2!;
  set heading2(String? value) {
    _heading2 = value;
  }

  ProductService() {
    ;
  }
}
