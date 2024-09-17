import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class PersonalProfileAction extends StatelessWidget {
  final Function() onAddStoryTap;
  final Function() onEditTap;
  final Function() onMoreTap;
  const PersonalProfileAction({super.key, required this.onAddStoryTap, required this.onEditTap, required this.onMoreTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppElevatedButton(
            onTap: onAddStoryTap,
            text: 'Add to story',
            height: 35.h,
          ),
        ),
        SizedBox(width: 15.w),
        Expanded(
          child: AppElevatedButtonOnlyBackground(
            onTap: onEditTap,
            text: 'Edit profile',
            height: 35.h,
          ),
        ),
        SizedBox(width: 20.w),
        AppImageAsset(
          ImageRes.icThreeDot,
          onTap: onMoreTap,
          width: 5.w,
          height: 22.h,
        )
      ],
    );
  }
}
