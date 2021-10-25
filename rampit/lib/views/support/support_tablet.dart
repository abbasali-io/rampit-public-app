part of support_view;

class _SupportTablet extends StatelessWidget {
  final SupportViewModel viewModel;

  _SupportTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SupportTablet'),
      ),
    );
  }
}
