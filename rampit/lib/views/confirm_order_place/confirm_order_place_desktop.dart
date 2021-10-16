part of confirm_order_place_view;

class _ConfirmOrderPlaceDesktop extends StatelessWidget {
  final ConfirmOrderPlaceViewModel viewModel;
  
  _ConfirmOrderPlaceDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ConfirmOrderPlaceDesktop'),
      ),
    );
  }
}
