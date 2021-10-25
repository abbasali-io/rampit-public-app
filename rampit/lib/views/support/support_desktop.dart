part of support_view;

class _SupportDesktop extends StatelessWidget {
  final SupportViewModel viewModel;
  
  _SupportDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SupportDesktop'),
      ),
    );
  }
}
