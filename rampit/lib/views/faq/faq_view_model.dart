import 'package:stacked/stacked.dart';

class FaqViewModel extends BaseViewModel {
  String _question;
  String get question => this._question;
  set question(String value) {
    this._question = value;
    notifyListeners();
  }

  String _answer;
  String get answer => this._answer;
  set answer(String value) {
    this._answer = value;
    notifyListeners();
  }

  double _animatedHeight;
  double get animatedHeight => this._animatedHeight;
  set animatedHeight(double value) {
    this._animatedHeight = value;
    notifyListeners();
  }

  int _selectedIndex;
  int get selectedIndex => this._selectedIndex;
  set selectedIndex(int value) {
    this._selectedIndex = value;
    notifyListeners();
  }

  FaqViewModel() {
    this.animatedHeight = 0.0;
    this.selectedIndex = 1;
    this.question = '1-What is Rampit?';
    this.answer =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lacinia, sem necelementum commodo, mi nulla varius augue, nec fermentum quam sapiurna.';
  }

}
