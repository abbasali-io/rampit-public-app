part of track_order_view;

class _TrackOrderDesktop extends StatelessWidget {
  final TrackOrderViewModel viewModel;
  
  _TrackOrderDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('TrackOrderDesktop'),
      ),
    );
  }
}
