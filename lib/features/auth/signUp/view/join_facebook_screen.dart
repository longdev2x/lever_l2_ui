import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_appbar.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class JoinFacebookScreen extends StatelessWidget {
  const JoinFacebookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBarNormal('Create Account', context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            const AppImageAsset(ImageRes.imgBanner1, width: 331, height: 218),
            SizedBox(height: 106.h),
            const AppText18(
              'Join Facebook',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20.h),
            const AppText12(
              'We’ll help you ',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            const AppText12(
              'create a new account in a few easy steps.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            SizedBox(height: 52.h),
            AppElevatedButton(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(AppRoutesNames.whatYourNameScreen);
                },
                text: 'Next'),
            const Spacer(),
            GestureDetector(
              onTap: () {
                AppToast.showToast('Tappp');
              },
              child: const AppText14(
                'Already have an account?',
                color: Color(0xFF384CFF),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
