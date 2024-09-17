import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Column(
          children: [
            const AppText18(
              'Choose a password',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            const AppText12(
              'Create a password at least with 6 chaeacters.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            const AppText12(
              'It should be something others couldn’t guess.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            SizedBox(height: 50.h),
            const AppTextFormField(lable: 'Password'),
            SizedBox(height: 67.h),
            AppElevatedButton(onTap: () {
              Navigator.of(context).pushNamed(AppRoutesNames.term);
            }, text: 'Next'),
          ],
        ),
      ),
    );
  }
}
