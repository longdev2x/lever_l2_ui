import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class HomeTopRowWidget extends StatelessWidget {
  const HomeTopRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const AppImageAsset(ImageRes.imgAvatarDefault, radius: 10, width: 50, height: 50,),
      SizedBox(width: 20.w),
      Expanded(child: _textField()),
      SizedBox(width: 20.w),
      AppImageAsset(ImageRes.icSearchHaveBg, height: 30.w, width: 30.w,),
    ],);
  }

  Widget _textField() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0x80EEEEEE),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.75.w, vertical: 10.h),
      child: Row(children: [
        const AppText12('What’s on your mind, Sanjay?', fontWeight: FontWeight.w300,),
        const Spacer(),
        AppImageAsset(ImageRes.icImage, width: 13.w, height: 11.75.h, radius: 10),
      ],),
    );
  }
}