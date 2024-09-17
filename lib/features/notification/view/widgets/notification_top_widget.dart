import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class NotificationTopWidget extends StatelessWidget {
  const NotificationTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
      child: Row(children: [
        const AppText24('Notifications', fontWeight: FontWeight.w700),
        const Spacer(),
        AppImageAsset(ImageRes.icSearchHaveBg, width: 30.w, height: 30.w),
      ],),
    );
  }
}