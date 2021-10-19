part of on_boarding_view;

class _OnBoardingDesktop extends StatelessWidget {
  final OnBoardingViewModel viewModel;
  
  _OnBoardingDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OnBoardingDesktop'),
      ),
    );
  }
}
