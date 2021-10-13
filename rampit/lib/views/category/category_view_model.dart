import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CategoryViewModel extends BaseViewModel {
  List<String> _catTagList;
  List<String> get catTagList => this._catTagList;
  set catTagList(List<String> value) {
    this._catTagList = value;
    notifyListeners();
  }

  String _selectCatTag;
  String get selectCatTag => this._selectCatTag;
  set selectCatTag(String value) {
    this._selectCatTag = value;
    notifyListeners();
  }

  bool _allTag;
  bool get allTag => this._allTag;
  set allTag(bool value) {
    this._allTag = value;
    notifyListeners();
  }

  bool _milkTag;
  bool get milkTag => this._milkTag;
  set milkTag(bool value) {
    this._milkTag = value;
    notifyListeners();
  }

  bool _meatTag;
  bool get meatTag => this._meatTag;
  set meatTag(bool value) {
    this._meatTag = value;
    notifyListeners();
  }

  bool _vagetables;
  bool get vagetables => this._vagetables;
  set vagetables(bool value) {
    this._vagetables = value;
    notifyListeners();
  }

  bool _drinks;
  bool get drinks => this._drinks;
  set drinks(bool value) {
    this._drinks = value;
    notifyListeners();
  }

  bool _cream;
  bool get cream => this._cream;
  set cream(bool value) {
    this._cream = value;
    notifyListeners();
  }

  CategoryViewModel() {
    this.catTagList = [
      'All',
      'Milk',
      'Meat',
      'Drinks',
      'Cream',
      'Vagetables',
    ];
    this.selectCatTag = 'All';
    this.allTag = true;
  }
  bool activeTagStatus({@required String tagName}) {
    switch (tagName) {
      case 'All':
        return this.allTag;
        break;
      case 'Milk':
        return this.milkTag;
        break;
      case 'Meat':
        return this.meatTag;
        break;
      case 'Vagetables':
        return this.vagetables;
        break;
      case 'Drinks':
        return this.drinks;
        break;
      case 'Cream':
        return this.cream;
        break;
      default:
        return true;
        break;
    }
  }

  void selectTagUpdateValue({
    @required String selectedTag,
  }) {
    this.allTag = false;
    this.milkTag = false;
    this.vagetables = false;
    this.cream = false;
    this.drinks = false;
    this.meatTag = false;
    switch (selectedTag) {
      case 'All':
        this.selectCatTag = selectedTag;
        this.allTag = true;
        break;
      case 'Milk':
        this.selectCatTag = selectedTag;
        this.milkTag = true;
        break;
      case 'Meat':
        this.selectCatTag = selectedTag;
        this.meatTag = true;
        break;
      case 'Vagetables':
        this.selectCatTag = selectedTag;
        this.vagetables = true;
        break;
      case 'Drinks':
        this.selectCatTag = selectedTag;
        this.drinks = true;
        break;
      case 'Cream':
        this.selectCatTag = selectedTag;
        this.cream = true;
        break;
      default:
        this.selectCatTag = 'All';
        this.allTag = true;
        break;
    }
  }
}
