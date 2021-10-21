part of order_details_view;

class _OrderDetailsTablet extends StatelessWidget {
  final OrderDetailsViewModel viewModel;

  _OrderDetailsTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OrderDetailsTablet'),
      ),
    );
  }
}
