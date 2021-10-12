part of category_view;

class _CategoryMobile extends StatelessWidget {
  final CategoryViewModel viewModel;

  _CategoryMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CategoryMobile'),
      ),
    );
  }
}
