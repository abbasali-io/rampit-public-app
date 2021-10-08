part of address_view;

class _AddressTablet extends StatelessWidget {
  final AddressViewModel viewModel;

  _AddressTablet (this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('AddressTablet'),
      ),
    );
  }
}
