import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class PersonalProfileLock extends StatelessWidget {
  final Function() onMoreTap;
  const PersonalProfileLock({super.key, required this.onMoreTap});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      AppImageAsset(ImageRes.icLock, width: 32.w, height: 35.w),
      SizedBox(width: 15.w),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const AppText14('You locked your profile', fontWeight: FontWeight.w600),
        GestureDetector(onTap: onMoreTap, child: const AppText14('Learn more', fontWeight: FontWeight.w600, color: Color(0xFF384CFF),),),
      ],),
    ],);
  }
}