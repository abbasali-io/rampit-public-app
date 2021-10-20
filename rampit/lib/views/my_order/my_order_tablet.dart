part of my_order_view;

class _MyOrderTablet extends StatelessWidget {
  final MyOrderViewModel viewModel;

  _MyOrderTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyOrderTablet'),
      ),
    );
  }
}
