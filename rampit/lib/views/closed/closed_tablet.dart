part of closed_view;

class _ClosedTablet extends StatelessWidget {
  final ClosedViewModel viewModel;

  _ClosedTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ClosedTablet'),
      ),
    );
  }
}
