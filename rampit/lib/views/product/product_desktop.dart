part of product_view;

class _ProductDesktop extends StatelessWidget {
  final ProductViewModel viewModel;
  
  _ProductDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ProductDesktop'),
      ),
    );
  }
}
