part of my_cart_view;

class _MyCartDesktop extends StatelessWidget {
  final MyCartViewModel viewModel;
  
  _MyCartDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyCartDesktop'),
      ),
    );
  }
}
