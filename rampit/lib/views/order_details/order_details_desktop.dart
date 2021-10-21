part of order_details_view;

class _OrderDetailsDesktop extends StatelessWidget {
  final OrderDetailsViewModel viewModel;
  
  _OrderDetailsDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OrderDetailsDesktop'),
      ),
    );
  }
}
