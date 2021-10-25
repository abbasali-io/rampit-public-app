part of rating_view;

class _RatingTablet extends StatelessWidget {
  final RatingViewModel viewModel;

  _RatingTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('RatingTablet'),
      ),
    );
  }
}
