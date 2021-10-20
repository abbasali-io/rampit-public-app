part of appbar_widget;

class _AppbarMobile extends StatelessWidget {
  final bool leading;
  final bool action;
  final String title;
  //imports
  final NavigationService _nav = locator<NavigationService>();

  _AppbarMobile({
    @required this.leading,
    @required this.title,
    @required this.action,
  });
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AppBar(
      foregroundColor: MyStyles.themeData().highlightColor,
      title: Text(
        title,
        style: GoogleFonts.nunito(
          color: Color(0xff303841),
          fontSize: size.height * 0.026,
          fontWeight: FontWeight.w800,
        ),
      ),
      centerTitle: true,
      elevation: 0.0,
      // leading: leading
      //     ? IconButton(
      //         icon: Icon(
      //           Icons.arrow_back,
      //           color: Color(0xff303841),
      //           size: size.height * 0.030,
      //         ),
      //         onPressed: () {
      //           print(_nav.previousRoute);
      //           _nav.navigateTo(_nav.previousRoute);
      //         },
      //       )
      //     : Container(),
      actions: <Widget>[
        action
            ? IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Color(0xff303841),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'mynotifications');
                },
              )
            : Container(),
        //Settings(),
      ],
      backgroundColor: Colors.white,
    );
  }
}
