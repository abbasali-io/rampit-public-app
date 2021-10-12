part of category_view;

class _CategoryTablet extends StatelessWidget {
  final CategoryViewModel viewModel;

  _CategoryTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CategoryTablet'),
      ),
    );
  }
}
