import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class ProfileLoginScreen extends StatelessWidget {
  const ProfileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AppImageAsset(
                      ImageRes.imgLogo,
                      width: 50,
                      height: 70,
                    ),
                    SizedBox(
                      height: 81.h,
                    ),
                    Row(
                      children: [
                        const AppImageNetwork(
                          radius: 10,
                        ),
                        SizedBox(width: 16.w),
                        const AppText18('Sanjay Shendy',
                            fontWeight: FontWeight.w700),
                        const Spacer(),
                        const AppImageAsset(
                          ImageRes.icThreeDot,
                          width: 4,
                          height: 16,
                        ),
                      ],
                    ),
                    SizedBox(height: 28.12.h),
                    listTile(
                        icon: ImageRes.icAdd,
                        title: 'Log Into Another Account',
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRoutesNames.login);
                        }),
                    SizedBox(height: 24.42.h),
                    listTile(
                        icon: ImageRes.icSearch,
                        title: 'Find Your Account',
                        onTap: () {
                          AppToast.showToast('Tappp');
                        }),
                  ],
                ),
                Positioned(
                  bottom: 35.h,
                  child: AppElevatedButton(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutesNames.joinFacebook);
                    },
                    text: 'Create New Facebook Account',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget listTile({
    required String icon,
    required title,
    required Function() onTap,
  }) =>
      GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.only(left: 5.14.w),
          child: Row(
            children: [
              AppImageAsset(
                icon,
                width: 24.72,
                height: 24.76,
              ),
              SizedBox(width: 15.14.w),
              AppText12(
                title,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF384CFF),
              ),
            ],
          ),
        ),
      );

      
}
