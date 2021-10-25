part of track_order_view;

class _TrackOrderTablet extends StatelessWidget {
  final TrackOrderViewModel viewModel;

  _TrackOrderTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TrackOrderTablet'),
      ),
    );
  }
}
