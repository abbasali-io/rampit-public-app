part of delivery_confirm_view;

class _DeliveryConfirmTablet extends StatelessWidget {
  final DeliveryConfirmViewModel viewModel;

  _DeliveryConfirmTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('DeliveryConfirmTablet'),
      ),
    );
  }
}
