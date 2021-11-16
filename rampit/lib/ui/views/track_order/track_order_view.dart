// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rampit/theme/styles.dart';
import 'package:rampit/ui/widgets/dumb_widgets/appbar/appbar_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:timer_count_down/timer_count_down.dart';

import './track_order_view_model.dart';

class TrackOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TrackOrderViewModel>.reactive(
      viewModelBuilder: () => TrackOrderViewModel(),
      onModelReady: (TrackOrderViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        TrackOrderViewModel model,
        Widget? child,
      ) {
        ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: const Size(100, 100),
    );
    return Scaffold(
      backgroundColor: MyStyles.themeData().backgroundColor,
          appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
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
          model.goToHomePage();
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
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              interval: const Duration(milliseconds: 1000),
              onFinished: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Timer is done!'),
                //   ),
                // );
              },
            ),
            const Text(' : ',style: TextStyle(
                  fontSize: 40,
                ),),
            Countdown(
              // controller: _controller,
              seconds: 60,
              build: (_, double time) => Text(
                (time.toInt()).toString(),
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
              interval: const Duration(milliseconds: 1000),
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
      },
    );
  }
}
