import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_appbar.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class PhoneScreen extends StatelessWidget {
  const PhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBarNormal('Mobile number', context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Column(
          children: [
            const AppText18(
              'Enter your mobile number',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            const AppText12(
              'Enter the mobile number where you can be reached. ',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            const AppText12(
              'No one else will see this on your profile',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            SizedBox(height: 50.h),
            const AppTextFormField(lable: 'Mobile number'),
            SizedBox(height: 67.h),
            AppElevatedButton(onTap: () {
              Navigator.of(context).pushNamed(AppRoutesNames.password);
            }, text: 'Next'),
          ],
        ),
      ),
    );
  }
}
