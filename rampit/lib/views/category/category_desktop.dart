part of category_view;

class _CategoryDesktop extends StatelessWidget {
  final CategoryViewModel viewModel;
  
  _CategoryDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CategoryDesktop'),
      ),
    );
  }
}
