part of delivery_confirm_view;

class _DeliveryConfirmDesktop extends StatelessWidget {
  final DeliveryConfirmViewModel viewModel;
  
  _DeliveryConfirmDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DeliveryConfirmDesktop'),
      ),
    );
  }
}
