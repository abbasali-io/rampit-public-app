import 'package:stacked/stacked.dart';

class CategoryViewModel extends BaseViewModel {
  List<String>? _catTagList;
  List<String>? get catTagList => _catTagList;

  String? _selectCatTag;
  String? get selectCatTag => _selectCatTag;

  bool? _allTag;
  bool? get allTag => _allTag;

  bool? _milkTag;
  bool? get milkTag => _milkTag;

  bool? _meatTag;
  bool? get meatTag => _meatTag;

  bool? _vagetables;
  bool? get vagetables => _vagetables;

  bool? _drinks;
  bool? get drinks => _drinks;

  bool? _cream;
  bool? get cream => _cream;

  CategoryViewModel() {
    _catTagList = [
      'All',
      'Milk',
      'Meat',
      'Drinks',
      'Cream',
      'Vagetables',
    ];
    _selectCatTag = 'All';
    _allTag = true;
    _milkTag = false;
    _vagetables = false;
    _cream = false;
    _drinks = false;
    _meatTag = false;
    notifyListeners();
  }
  bool activeTagStatus({required String? tagName}) {
    switch (tagName) {
      case 'All':
        return _allTag!;
      case 'Milk':
        return _milkTag!;
      case 'Meat':
        return _meatTag!;
      case 'Vagetables':
        return _vagetables!;
      case 'Drinks':
        return _drinks!;
      case 'Cream':
        return _cream!;
      default:
        return true;
    }
  }

  void selectTagUpdateValue({
    required String? selectedTag,
  }) {
    _allTag = false;
    _milkTag = false;
    _vagetables = false;
    _cream = false;
    _drinks = false;
    _meatTag = false;
    notifyListeners();
    switch (selectedTag) {
      case 'All':
        _selectCatTag = selectedTag!;
        _allTag = true;
        notifyListeners();
        break;
      case 'Milk':
        _selectCatTag = selectedTag!;
        _milkTag = true;
        notifyListeners();
        break;
      case 'Meat':
        _selectCatTag = selectedTag!;
        _meatTag = true;
        notifyListeners();
        break;
      case 'Vagetables':
        _selectCatTag = selectedTag!;
        _vagetables = true;
        notifyListeners();
        break;
      case 'Drinks':
        _selectCatTag = selectedTag!;
        _drinks = true;
        notifyListeners();
        break;
      case 'Cream':
        _selectCatTag = selectedTag!;
        _cream = true;
        notifyListeners();
        break;
      default:
        _selectCatTag = 'All';
        _allTag = true;
        notifyListeners();
        break;
    }
  }

  Future<void> init() async {}
}
