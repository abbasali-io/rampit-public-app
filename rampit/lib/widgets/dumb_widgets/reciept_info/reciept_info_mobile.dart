part of reciept_info_widget;

class _RecieptInfoMobile extends StatelessWidget {
  final Size size;
  final String title;
  final String amount;
  final fontWeight;
  _RecieptInfoMobile({
  @required this.size,
  @required this.title,
  @required this.amount,
  FontWeight this.fontWeight,
});
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: MyStyles.themeData().highlightColor,
            fontSize: size.height * 0.022,
            fontWeight: fontWeight,
          ),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Text(
          'RM '+amount,
          style: GoogleFonts.poppins(
            color: MyStyles.themeData().highlightColor,
            fontSize: size.height * 0.022,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
  }
}