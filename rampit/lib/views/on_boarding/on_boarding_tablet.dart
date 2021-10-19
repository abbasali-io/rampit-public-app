part of on_boarding_view;

class _OnBoardingTablet extends StatelessWidget {
  final OnBoardingViewModel viewModel;

  _OnBoardingTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OnBoardingTablet'),
      ),
    );
  }
}
