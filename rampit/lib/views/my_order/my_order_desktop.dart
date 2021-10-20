part of my_order_view;

class _MyOrderDesktop extends StatelessWidget {
  final MyOrderViewModel viewModel;
  
  _MyOrderDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyOrderDesktop'),
      ),
    );
  }
}
