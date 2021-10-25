part of order_details_view;

class _OrderDetailsMobile extends StatelessWidget {
  final OrderDetailsViewModel viewModel;

  _OrderDetailsMobile (this.viewModel);

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;

    return ViewModelBuilder<OrderDetailsViewModel>.reactive(
      viewModelBuilder: () => OrderDetailsViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (BuildContext context, OrderDetailsViewModel viewModel,
          Widget child) {
        return Scaffold(
          backgroundColor: MyStyles.themeData().backgroundColor,
          appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppbarWidget(
            title: 'Orders Details',
            leading: true,
            action: false,
          ),
        ),
          body: Container(
            width: size.width,
            height: size.height,
            child: ListView(
              // padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 18),
                //   child: Text(
                //     'Order Details:',
                //     overflow: TextOverflow.ellipsis,
                //     maxLines: 1,
                //     style: GoogleFonts.nunito(
                //       fontSize: size.height * 0.024,
                //       fontWeight: FontWeight.w700,
                //       color: MyStyles.themeData().primaryColorLight,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: size.height * 0.010,
                // ),
                ListTile(
                  title: Text(
                    'Order No: ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().primaryColorLight,
                    ),
                  ),
                  trailing: Text(
                    viewModel.orderNo,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().highlightColor,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Payment Ref No: ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().primaryColorLight,
                    ),
                  ),
                  trailing: Text(
                    'GVSFH143235456',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().highlightColor,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Delivery Time: ',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().primaryColorLight,
                    ),
                  ),
                  trailing: Text(
                    '20 June, 11:35 a.m',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().highlightColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
          
                infoContainer(context: context, size: size),
          
                //selected prosuct container
                Container(
                  width: double.infinity,
                  height: size.height / 2,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x33303841),
                        blurRadius: 15,
                        offset: Offset(-7, 7),
                      ),
                    ],
                    color: MyStyles.themeData().backgroundColor,
                  ),
                  child: ListView.builder(
                      itemCount: viewModel.productData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return selectedItemInfo(
                          size: size,
                          itemImagePath: this.viewModel.productData[index]['image'],
                          itemName: this.viewModel.productData[index]['productTitle'],
                          itemQuantity: this.viewModel.productData[index]['quantity'],
                          itemPrice: this.viewModel.productData[index]['productPrice'],
                        );
                      }),
                ),
                SizedBox(
                  height: size.height * 0.040,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'Driver & Shipping',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.024,
                      fontWeight: FontWeight.w700,
                      color: MyStyles.themeData().highlightColor,
                    ),
                  ),
                ),
                shippingAddressInfo(size: size),
                SizedBox(
                  height: size.height * 0.030,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Payment Info'.toUpperCase(),
                    style: GoogleFonts.poppins(
                      color: MyStyles.themeData().primaryColorLight,
                      fontSize: size.height * 0.026,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.030,
                ),
                RecieptInfoWidget(
                  title: 'SubTotal',
                  amount: '1300',
                  fontWeight: FontWeight.w500,
                  size: size,
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Divider(
                  color: Color(0xffEFF2EB),
                  thickness: 2,
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                RecieptInfoWidget(
                  title: 'Service Fee',
                  amount: '150',
                  fontWeight: FontWeight.w500,
                  size: size,
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Divider(
                  color: Color(0xffEFF2EB),
                  thickness: 2,
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                RecieptInfoWidget(
                  title: 'Total',
                  amount: '1450',
                  fontWeight: FontWeight.w500,
                  size: size,
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Divider(
                  color: Color(0xffEFF2EB),
                  thickness: 2,
                ),
                SizedBox(
                  height: size.height * 0.100,
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            height: size.height * 0.090,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: MyStyles.themeData().primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 5.0),
                    //   child: TengeIcon(
                    //     iconColor: MyStyles.themeData().backgroundColor,
                    //     iconSize: size.height * 0.026,
                    //   ),
                    // ),
                    Text(
                      'RM '+this.viewModel.totalAmount,
                      style: GoogleFonts.poppins(
                        color: MyStyles.themeData().backgroundColor,
                        fontSize: size.height * 0.032,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    viewModel.goToTimeline();
                  },
                  child: Text(
                    'Track Order >>>',
                    style: GoogleFonts.nunito(
                      fontSize: size.height * 0.028,
                      fontWeight: FontWeight.w800,
                      color: MyStyles.themeData().backgroundColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget shippingAddressInfo({@required Size size}) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      width: size.width * 0.343,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      // padding: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x33303B57),
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
        color: MyStyles.themeData().backgroundColor,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            driverInfoTile(
      size: size,
      driverImage: viewModel.driverImageUrl,
      driverName: viewModel.driverName,
            ),
            SizedBox(
      height: size.height * 0.005,
            ),
            Divider(
      color: MyStyles.themeData().primaryColorLight,
      thickness: 2,
            ),
            Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        'Shipment Address:',
        style: GoogleFonts.poppins(
          color: MyStyles.themeData().highlightColor,
          fontSize: size.height * 0.022,
          fontWeight: FontWeight.w500,
        ),
      ),
            ),
            Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        viewModel.userName,
        style: GoogleFonts.poppins(
          color: MyStyles.themeData().highlightColor,
          fontSize: size.height * 0.022,
          fontWeight: FontWeight.w500,
        ),
      ),
            ),
            SizedBox(
      height: size.height * 0.00,
            ),
            Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
          viewModel.userAddress,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(
            color: MyStyles.themeData().primaryColorLight,
            fontSize: size.height * 0.020,
            fontWeight: FontWeight.w500,
          ),
        ),
            ),
            Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Text(
          viewModel.userPhoneNumber,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.poppins(
            color: MyStyles.themeData().primaryColorLight,
            fontSize: size.height * 0.020,
            fontWeight: FontWeight.w500,
          ),
        ),
            ),
          ],
        ),
    );
  }

  Widget driverInfoTile({
    @required Size size,
    @required String driverImage,
    @required String driverName,
  }) {
    return ListTile(
      autofocus: true,
      visualDensity: VisualDensity(horizontal: 0, vertical: 4),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      leading: Container(
        height: size.height * 0.095,
        child: CircleAvatar(
          radius: size.height * 0.065,
          backgroundColor: Color(0xff383E56),
          child: CircleAvatar(
            radius: size.height * 0.060,
            backgroundImage: AssetImage(driverImage),
          ),
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Text(
          driverName,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: GoogleFonts.nunito(
              color: MyStyles.themeData().highlightColor,
              fontSize: size.height * 0.025,
              fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Text(
        'Delivery Partner',
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: GoogleFonts.nunito(
            color: MyStyles.themeData().primaryColorLight,
            fontSize: size.height * 0.018,
            fontWeight: FontWeight.bold),
      ),
      trailing: IconButton(
        alignment: Alignment.center,
        color: MyStyles.themeData().primaryColor,
        icon: Icon(
          Icons.call,
          size: size.height * 0.030,
        color: MyStyles.themeData().primaryColor,

        ),
        onPressed: null,
      ),
    );
  }

  Widget infoContainer({BuildContext context, @required Size size}) {
    return Container(
      width: double.infinity,
      height: size.height * 0.065,
      color: Color(0xffEFF2EB),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.shopping_basket_outlined,
              size: size.height * 0.035,
              color: MyStyles.themeData().primaryColor,
            ),
          ),
          SizedBox(
            width: size.width * 0.030,
          ),
          Text(
            'You are Receiving',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.nunito(
              fontSize: size.height * 0.024,
              fontWeight: FontWeight.w700,
              color: MyStyles.themeData().primaryColorLight,
            ),
          ),
        ],
      ),
    );
  }

  Widget selectedItemInfo({
    @required Size size,
    @required String itemName,
    @required String itemQuantity,
    @required String itemImagePath,
    @required String itemPrice,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          autofocus: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: Container(
            alignment: Alignment.topCenter,
            height: size.height * 0.120,
            width: size.width * 0.120,
            child: Image.asset(
              itemImagePath,
              fit: BoxFit.contain,
            ),
          ),
          tileColor: Colors.transparent,
          onTap: null,
          title: Text(
            itemName,
            style: GoogleFonts.poppins(
              color: MyStyles.themeData().highlightColor,
              fontSize: size.height * 0.020,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // TengeIcon(
              //   iconColor: Colors.redAccent,
              //   iconSize: size.height * 0.017,
              // ),
              Text(
                'RM '+itemPrice,
                style: GoogleFonts.poppins(
                  color: Colors.redAccent,
                  fontSize: size.height * 0.022,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          trailing: Text(
            itemQuantity,
            style: GoogleFonts.poppins(
              color: MyStyles.themeData().primaryColorLight,
              fontSize: size.height * 0.020,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Divider(
          color: Color(0xffEFF2EB),
          thickness: 2,
        ),
      ],
    );
  }
}


