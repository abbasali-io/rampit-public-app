part of product_view;

class _ProductTablet extends StatelessWidget {
  final ProductViewModel viewModel;

  _ProductTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ProductTablet'),
      ),
    );
  }
}
