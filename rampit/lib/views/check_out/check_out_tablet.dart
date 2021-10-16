part of check_out_view;

class _CheckOutTablet extends StatelessWidget {
  final CheckOutViewModel viewModel;

  _CheckOutTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CheckOutTablet'),
      ),
    );
  }
}
