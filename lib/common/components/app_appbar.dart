import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';

AppBar appAppBarNormal(String title, {required BuildContext context} ) => AppBar(
      title: AppText14(title, fontWeight: FontWeight.w400),
      centerTitle: false,
      titleSpacing: 0,
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 1.h),
        child: const AppDivider(),
      ),
      leading: IconButton(
        icon: const AppImageAsset(ImageRes.icBack, width: 8, height: 13.71,), // Set the size here
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
