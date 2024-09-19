import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_appbar.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBarNormal('Find Your Account', context: context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            children: [
              const AppText14(
                'Enter the code we sent to',
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
              const AppText14(
                'Sanjayshendy123@gmail.com',
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 10.h),
              const AppText12(
                'We sent 6 digit code to your email address.',
                color: Color(0xFF999999),
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 35.h),
              const AppTextFormField(lable: 'OTP', textAlign: TextAlign.center, obsActiveLable: true,),
              SizedBox(height: 20.h),
              AppElevatedButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutesNames.newCreatePass);
                  },
                  text: 'Continue'),
              SizedBox(height:35.h),
              listTile(icon: ImageRes.icMail, title: 'Send email again', onTap: () {}),
              SizedBox(height:25.h),
              listTile(icon: ImageRes.icMess, title: 'Get code via SMS', onTap: () {}),
            ],
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
              AppText14(
                title,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
        ),
      );
}
