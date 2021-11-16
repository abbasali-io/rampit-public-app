import 'package:stacked/stacked.dart';

class FaqViewModel extends BaseViewModel {
  String? _question;
  String? get question => _question;

  String? _answer;
  String? get answer => _answer;

  double? _animatedHeight;
  double? get animatedHeight => _animatedHeight;

  int? _selectedIndex;
  int? get selectedIndex => _selectedIndex;

  FaqViewModel() {
    _animatedHeight = 0.0;
    _selectedIndex = 1;
    _question = '1-What is Rampit?';
    _answer =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras lacinia, sem necelementum commodo, mi nulla varius augue, nec fermentum quam sapiurna.';
    notifyListeners();
  }

  setFaqContainerHieght(int index) {
    if (index == 3) {
      _selectedIndex = 3;
      _animatedHeight != 0.0 ? _animatedHeight = 0.0 : _animatedHeight = 150.0;
      notifyListeners();
    } else if (index == 2) {
      _selectedIndex = 2;
      _animatedHeight != 0.0 ? _animatedHeight = 0.0 : _animatedHeight = 150.0;
      notifyListeners();
    } else if (index == 1) {
      _selectedIndex = 1;
      _animatedHeight != 0.0 ? _animatedHeight = 0.0 : _animatedHeight = 150.0;
      notifyListeners();
    }
  }

  Future<void> init() async {}
}
