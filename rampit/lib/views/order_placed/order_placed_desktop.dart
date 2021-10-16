part of order_placed_view;

class _OrderPlacedDesktop extends StatelessWidget {
  final OrderPlacedViewModel viewModel;
  
  _OrderPlacedDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OrderPlacedDesktop'),
      ),
    );
  }
}
