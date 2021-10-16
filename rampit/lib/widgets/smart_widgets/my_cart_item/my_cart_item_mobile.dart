part of my_cart_item_widget;

class _MyCartItemMobile extends StatelessWidget {
  final String imagePath;
  final String price;
  final String pName;
  final String quantity;
  final MyCartItemViewModel viewModel;
  _MyCartItemMobile({
    @required this.quantity,
    @required this.viewModel,
    @required this.imagePath,
    @required this.price,
    @required this.pName,
  });
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Center(
      child: Container(
          width: 90.w,
          height: 15.h,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ListTile(
                leading: Container(
                  width: 15.w,
                  height: 15.h,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(this.imagePath),
                          fit: BoxFit.contain)),
                ),
                trailing: Container(
                  child: Text(
                    'RM ' + this.price,
                    style: TextStyle(
                        color: MyStyles.themeData().highlightColor,
                        fontSize: 4.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Row(
                  children: [
                    Container(
                      child: Text(
                        this.quantity,
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      child: Text(
                        '*',
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      width: 33.w,
                      child: Text(
                        this.pName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: MyStyles.themeData().highlightColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
