import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class PersonalProfileMoreInfor extends StatelessWidget {
  const PersonalProfileMoreInfor({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          _listTile(
              icon: ImageRes.icCompany,
              name: 'Founder and CEO at',
              infor: 'A to Z company Ltd.',
              onTap: (event) {}),
          SizedBox(height: 15.h),
          _listTile(
              icon: ImageRes.icUniversity,
              name: 'Studied Computer Science at',
              infor: '\nHarvard University',
              onTap: (event) {}),
          SizedBox(height: 15.h),
          _listTile(
              icon: ImageRes.icHome2,
              name: 'Lives in',
              infor: 'Mumbai, Maharastra',
              onTap: (event) {}),
          SizedBox(height: 15.h),
          _listTile(
              icon: ImageRes.icLocation,
              name: 'From',
              infor: 'Mumbai, India.',
              onTap: (event) {}),
          SizedBox(height: 15.h),
          _listTile(icon: ImageRes.icThreeDotHori2, name: 'See your about info.'),
          SizedBox(height: 15.h),
          AppElevatedButtonOnlyBackground(onTap: () {
            AppToast.showToast('Tappp');
          }, text: 'Edit public details', width: 170.w),
        ],
      ),
    );
  }

  Widget _listTile(
      {required String icon,
      required String name,
      String? infor,
      Function(PointerEnterEvent e)? onTap}) {
    return Row(
      children: [
        AppImageAsset(icon, width: 25.w, height: 25.w),
        SizedBox(width: 12.w),
        RichText(
          text: TextSpan(
            text: '$name ',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                onEnter: onTap,
                text: infor,
                style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
