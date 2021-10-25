part of rating_view;

class _RatingMobile extends StatelessWidget {
  final RatingViewModel viewModel;

  _RatingMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(100, 100),
    );
    return Scaffold(
      backgroundColor: MyStyles.themeData().backgroundColor,
      appBar: AppBar(
        foregroundColor: MyStyles.themeData().highlightColor,
        centerTitle: true,
        title: Text('Rate'),
        backgroundColor: MyStyles.themeData().backgroundColor,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: MyStyles.themeData().highlightColor,
            fontWeight: FontWeight.bold,
            fontSize: 5.sp),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: MyStyles.themeData().backgroundColor,
        child: Container(
            width: 100.w,
            height: 15.h,
            child: MyCartBottomNavWidget(
              btnText: 'Submit Feedback',
              tPrice: '',
              tPriceShow: false,
              onTap: () {
                this.viewModel.nav.navigateTo(homeViewRoute);
              },
            )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // padding: const EdgeInsets.symmetric(
            //   vertical: 30,
            //   horizontal: 15,
            // ),
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.030,
              ),
              Center(
                child: Text(
                  'How was your experience with us?',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                    color: MyStyles.themeData().highlightColor,
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.070,
              ),
              Image.asset(viewModel.storeImage),
              SizedBox(
                height: size.height * 0.020,
              ),
              // Text(
              //   'Ebazaar Union Market',
              //   overflow: TextOverflow.ellipsis,
              //   maxLines: 1,
              //   style: GoogleFonts.nunito(
              //     color: MyStyles.themeData().highlightColor,
              //     fontSize: size.height * 0.025,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
              // SizedBox(
              //   height: size.height * 0.070,
              // ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: MyStyles.themeData().primaryColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: size.height * 0.050,
              ),
              Center(
                child: Text(
                  'How was your experience with the driver?',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                    color: MyStyles.themeData().highlightColor,
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.020,
              ),
              RatingBar.builder(
                initialRating: 3,
                itemCount: 5,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return Row(
                        children: [
                          Icon(
                        Icons.sentiment_very_dissatisfied,
                        color: Colors.red,
                      ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      );
                    case 1:
                      return Row(
                        children: [
                          Icon(
                            Icons.sentiment_dissatisfied,
                            color: Colors.redAccent,
                          ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      );
                    case 2:
                      return Row(
                        children: [
                          Icon(
                        Icons.sentiment_neutral,
                        color: Colors.amber,
                      ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ); 

                    case 3:
                      return Row(
                        children: [
                          Icon(
                        Icons.sentiment_satisfied,
                        color: Colors.lightGreen,
                      ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ); 
                      
                    case 4:
                      return Row(
                        children: [
                          Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green,
                      ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ); 
                      
                    default:
                      return Row(
                        children: [
                          Icon(
                        Icons.sentiment_very_satisfied,
                        color: Colors.green,
                      ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ); 
                  }
                },
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: size.height * 0.030,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Reviews:',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.nunito(
                    color: MyStyles.themeData().highlightColor,
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.030,
              ),
              instructionContainer(
                size: size,
                hintText: 'Write your reviews here',
              ),
              SizedBox(
                height: size.height * 0.050,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget instructionContainer({@required Size size, String hintText}) {
    return Container(
      height: size.height * 0.200,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(4, 4),
            color: Color(0x99D1CDC7),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        minLines: 10,
        maxLines: 15,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.nunito(
              fontSize: size.height * 0.022,
              color: MyStyles.themeData().primaryColorLight,
              fontWeight: FontWeight.w700),

          filled: true,
          // prefixIcon: Icon(
          //   Icons.edit_outlined,
          //   color: MyStyles.themeData().primaryColor,
          //   size: size.height * 0.025,
          // ),
          fillColor: MyStyles.themeData().backgroundColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
                color: MyStyles.themeData().highlightColor, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            borderSide: BorderSide(
                color: MyStyles.themeData().highlightColor, width: 0.5),
          ),
        ),
      ),
    );
  }
}
