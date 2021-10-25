part of track_order_view;

class _TrackOrderMobile extends StatelessWidget {
  final TrackOrderViewModel viewModel;

  _TrackOrderMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
      backgroundColor: MyStyles.themeData().backgroundColor,
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppbarWidget(
            title: 'Track Orders',
            leading: true,
            action: false,
          ),
        ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 6,
        backgroundColor: MyStyles.themeData().primaryColor,
        child: FaIcon(FontAwesomeIcons.times,
            color: MyStyles.themeData().backgroundColor),
        onPressed: () {
          this.viewModel.goToHomePage();
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 5.h,
        ),
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Countdown(
              // controller: _controller,
              seconds: (60*15),
              build: (_, double time) => Text(
                ((time~/60).toInt()).toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              interval: Duration(milliseconds: 1000),
              onFinished: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Timer is done!'),
                //   ),
                // );
              },
            ),
            Text(' : ',style: TextStyle(
                  fontSize: 40,
                ),),
            Countdown(
              // controller: _controller,
              seconds: 60,
              build: (_, double time) => Text(
                (time.toInt()).toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              interval: Duration(milliseconds: 1000),
              onFinished: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Timer is done!'),
                //   ),
                // );
              },
            ),
          ],
        )
      ),
    );
  }
}
