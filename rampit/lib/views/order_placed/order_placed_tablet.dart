part of order_placed_view;

class _OrderPlacedTablet extends StatelessWidget {
  final OrderPlacedViewModel viewModel;

  _OrderPlacedTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('OrderPlacedTablet'),
      ),
    );
  }
}
