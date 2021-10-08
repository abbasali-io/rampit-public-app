part of address_view;

class _AddressMobile extends StatelessWidget {
  final AddressViewModel viewModel;

  _AddressMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AddressMobile'),
      ),
    );
  }
}
