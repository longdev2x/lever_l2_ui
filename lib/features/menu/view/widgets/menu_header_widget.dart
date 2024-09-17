import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class MenuHeaderWidget extends StatelessWidget {
  const MenuHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
        const AppText24('Menu', fontWeight: FontWeight.w700),
        const Spacer(),
        AppImageAsset(ImageRes.icSearchHaveBg, width: 30.w, height: 30.w),
      ],);
  }
}