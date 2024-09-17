import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/features/stream/view/widgets/watch_list_widget.dart';
import 'package:lever_l2/features/stream/view/widgets/watch_nav_widget.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText24('Watch', fontWeight: FontWeight.w700),
              SizedBox(height: 15.h),
              const WatchNavWidget(),
              SizedBox(height: 34.h),
              const WatchList(),
            ],
          ),
        ),
      ],),
    );
  }
}