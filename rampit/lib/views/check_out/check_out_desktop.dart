part of check_out_view;

class _CheckOutDesktop extends StatelessWidget {
  final CheckOutViewModel viewModel;
  
  _CheckOutDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('CheckOutDesktop'),
      ),
    );
  }
}
