part of my_cart_view;

class _MyCartTablet extends StatelessWidget {
  final MyCartViewModel viewModel;

  _MyCartTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('MyCartTablet'),
      ),
    );
  }
}
