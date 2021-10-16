part of confirm_order_place_view;

class _ConfirmOrderPlaceTablet extends StatelessWidget {
  final ConfirmOrderPlaceViewModel viewModel;

  _ConfirmOrderPlaceTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ConfirmOrderPlaceTablet'),
      ),
    );
  }
}
