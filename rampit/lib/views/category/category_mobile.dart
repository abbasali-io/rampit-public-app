part of category_view;

class _CategoryMobile extends StatelessWidget {
  final CategoryViewModel viewModel;

  _CategoryMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
        appBar: AppBar(
          foregroundColor: MyStyles.themeData().highlightColor,
          centerTitle: true,
          title: Text('Categories'),
          backgroundColor: MyStyles.themeData().backgroundColor,
          elevation: 0,
          titleTextStyle: TextStyle(
              color: MyStyles.themeData().highlightColor,
              fontWeight: FontWeight.bold,
              fontSize: 5.sp),
        ),
        body: SafeArea(
          child: Container(
            width: 100.w,
            height: 100.h,
            color: MyStyles.themeData().backgroundColor,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 5.h,
                      child: Container(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: this.viewModel.catTagList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5.w, 0),
                              child: InkWell(
                                onTap: () {
                                  this.viewModel.selectTagUpdateValue(
                                      selectedTag:
                                          this.viewModel.catTagList[index]);
                                },
                                child: TagContainerStyleWidget(
                                    tagActive: this.viewModel.activeTagStatus(
                                        tagName:
                                            this.viewModel.catTagList[index]),
                                    tagName: this.viewModel.catTagList[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.2.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: Container(
                      width: 90.w,
                      height: 70.h,
                      child: GridView.builder(
                        padding: EdgeInsets.fromLTRB(2.w, 0, 0, 0),
                        itemCount: 10,
                        gridDelegate:
                            new SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.49,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return ProductContainerWidget(
                            heading1: 'KARMA DRINKS',
                            heading2: 'ORGANIC ORANGE',
                            imagePath: 'assets/images/karma-drinks.png',
                            text: 'RM 8.00 each',
                          );
                        },
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
