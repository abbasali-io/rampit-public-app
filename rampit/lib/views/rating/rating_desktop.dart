part of rating_view;

class _RatingDesktop extends StatelessWidget {
  final RatingViewModel viewModel;
  
  _RatingDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('RatingDesktop'),
      ),
    );
  }
}
