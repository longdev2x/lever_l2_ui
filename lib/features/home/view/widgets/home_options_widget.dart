import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class HomeOptionsWidget extends StatelessWidget {
  const HomeOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _optionItem(onTap: () {
          AppToast.showToast('Tappp');
        }, name: 'Reels', icon: ImageRes.icReel, itemColor: const Color(0xFFF9C50F), bgColor: const Color(0x1AF9C50F)),
        _optionItem(onTap: () {
          AppToast.showToast('Tappp');
        }, name: 'Room', icon: ImageRes.icRoom, itemColor: const Color(0xFF44C041), bgColor: const Color(0x1A44C041)),
        _optionItem(onTap: () {
          AppToast.showToast('Tappp');
        }, name: 'Group', icon: ImageRes.icGroup, itemColor: const Color(0xFFFC6565), bgColor: const Color(0x1AF85900)),
        _optionItem(onTap: () {
          AppToast.showToast('Tappp');
        }, name: 'Live', icon: ImageRes.icLive, itemColor: const Color(0xFF486BE5), bgColor: const Color(0x1A486BE5)),
      ],
    );
  }

  Widget _optionItem({
    required Function() onTap,
    required String name,
    required String icon,
    required Color itemColor,
    required Color bgColor,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80.w,
        height: 30.h,
        padding: EdgeInsets.only(left: 8.w, top: 5.h, bottom: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor
        ),
        child: Row(children: [
          AppImageAsset(icon, color: itemColor, width: 21.w, height: 19.h,),
          SizedBox(width: 6.w),
          AppText12(name, color: itemColor, fontWeight: FontWeight.w500),
        ],),
      ),
    );
  }
}
