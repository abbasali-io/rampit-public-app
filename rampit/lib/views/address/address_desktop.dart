part of address_view;

class _AddressDesktop extends StatelessWidget {
  final AddressViewModel viewModel;
  
  _AddressDesktop (this.viewModel);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AddressDesktop'),
      ),
    );
  }
}
