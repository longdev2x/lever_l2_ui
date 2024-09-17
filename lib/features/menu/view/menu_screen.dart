import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/menu/view/widgets/menu_header_widget.dart';
import 'package:lever_l2/features/menu/view/widgets/menu_options_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              const MenuHeaderWidget(),
              SizedBox(height: 10.h),
              const AppText14('Shortus',
                  fontWeight: FontWeight.w600, color: Color(0xFF555555)),
              SizedBox(height: 10.h),
              const MenuOptionsWidget(),
            ],
          ),
        ),
        const AppDivider(),
        _rowOptions(text: 'Community resources', icon: ImageRes.icCommunity, onTap: () {}),
        const AppDivider(),
        _rowOptions(text: 'Help & Support', icon: ImageRes.icHelp, onTap: () {}),
        const AppDivider(),
        _rowOptions(text: 'Settings & Privacy', icon: ImageRes.icSetting, onTap: () {}),
      ],
    );
  }

  Widget _rowOptions({required String text, required String icon, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText12(text, fontWeight: FontWeight.w500),
            SizedBox(width: 6.w),
            AppImageAsset(icon)
          ],),
      ),
    );
  }
}
