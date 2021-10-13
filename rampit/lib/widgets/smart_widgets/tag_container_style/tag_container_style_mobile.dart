part of tag_container_style_widget;

class _TagContainerStyleMobile extends StatelessWidget {
  final TagContainerStyleViewModel viewModel;
  final String tagName;
  final bool tagActive;
  _TagContainerStyleMobile({
    @required this.tagName, 
    @required this.viewModel,
    @required this.tagActive
  });
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Container(
      decoration: BoxDecoration(
          color: this.tagActive == true? MyStyles.themeData().highlightColor:MyStyles.themeData().primaryColorLight,
          borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.fromLTRB(3.w, 0.h, 3.w, 0.h),
      child: Center(
        child: Text(
          this.tagName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 4.sp, color: this.tagActive == true? MyStyles.themeData().backgroundColor:MyStyles.themeData().highlightColor,),
        ),
      ),
    );
  }
}
