part of category_circle_box_widget;

class _CategoryCircleBoxMobile extends StatelessWidget {
  final String catName;
  final String catImagePath;
  _CategoryCircleBoxMobile(
      {@required this.catName, @required this.catImagePath});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return InkWell(
      onTap: () {},
      child: Container(
        width: 20.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: MyStyles.themeData().highlightColor,
                border: Border.all(style: BorderStyle.solid, width: 0.3.w),
              ),
              child: CircleAvatar(
                radius: 7.w,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(this.catImagePath, fit: BoxFit.contain),
                ),
                backgroundColor: MyStyles.themeData().primaryColorLight,
              ),
            ),
            Container(
              child: Text(
                this.catName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
