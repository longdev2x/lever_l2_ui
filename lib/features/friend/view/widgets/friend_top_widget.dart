import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class FriendTopWidget extends StatelessWidget {
  final Function() onSearchTap;
  final Function() onSuggetTap;
  final Function() onYourFriendTap;
  const FriendTopWidget({super.key, required this.onSearchTap, required this.onSuggetTap, required this.onYourFriendTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 21.h, left: 20.w, right: 20.w),
      child: Column(children: [
        Row(children: [
          const AppText24('Friends', color: Colors.black, fontWeight: FontWeight.w700),
          const Spacer(),
          AppImageAsset(ImageRes.icSearchHaveBg, onTap: onSearchTap, height: 30.w, width: 30.w),
        ],),
        SizedBox(height: 21.h),
        Row(children: [
          AppElevatedButton(onTap: onSuggetTap, text: 'Suggestions', height: 34.h, width: 110.w,),
          SizedBox(width: 15.w),
          AppElevatedButton(onTap: onYourFriendTap, text: 'Your Friends', height: 34.h, width: 110.w,),
        ],),
      ],),
    );
  }
}