import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class RowTopWidget extends StatelessWidget {
  final Function() onFbMessTap;
  const RowTopWidget({super.key, required this.onFbMessTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppGradientText('Facebook'),
        const Spacer(),
        AppImageAsset(
          onTap: onFbMessTap,
          ImageRes.imgFbMessager,
          height: 26.w,
          width: 26.w,
        ),
      ],
    );
  }
}
