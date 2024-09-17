import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class MessageSearchBarWidget extends StatelessWidget {
  const MessageSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        alignment: Alignment.center,
        width: 276.w,
        height: 34.h,
        padding: EdgeInsets.only(
          left: 10.w
        ),
        decoration: BoxDecoration(
          color: const Color(0x33EEEEEE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: const AppImageAsset(ImageRes.icSearchMess, width: 14, height:  14,),
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: _border(),
                enabledBorder: _border(),
                errorBorder: _border(),
                focusedBorder: _border(),
                disabledBorder: _border(),
                focusedErrorBorder: _border(),
                contentPadding: EdgeInsets.symmetric(vertical: 8.5.h)
              ),
            ),
          ),
        ],),
      ),
      SizedBox(width: 6.w),
      Expanded(
        child: Container(
          alignment: Alignment.center,
          height: 34.h,
          decoration: BoxDecoration(
            color: const Color(0xCCDDDDDD),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const AppText14('Unread', color: Color(0xFF555555), fontWeight: FontWeight.w400,),
        ),
      ),
    ],);
  }

  UnderlineInputBorder _border() {
    return const UnderlineInputBorder(
      borderSide: BorderSide.none
    );
  }
}