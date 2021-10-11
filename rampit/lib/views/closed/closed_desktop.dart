part of closed_view;

class _ClosedDesktop extends StatelessWidget {
  final ClosedViewModel viewModel;
  
  _ClosedDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ClosedDesktop'),
      ),
    );
  }
}
