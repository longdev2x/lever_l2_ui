import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset your password'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            children: [
              const AppText18(
                'Create new password',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 20.h),
              const AppText12('You will use this password to access your account.', color: Color(0xFF999999), fontWeight: FontWeight.w400,),
              const AppText12('Enter a combination of at least six numbers, letters', color: Color(0xFF999999), fontWeight: FontWeight.w400,),
              const AppText12('and punctuation marks.', color: Color(0xFF999999), fontWeight: FontWeight.w400,),
              SizedBox(height: 65.h),
              const AppTextFormField(lable: 'New Password', textAlign: TextAlign.center, obsActiveLable: true,),
              SizedBox(height: 20.h),
              AppElevatedButton(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(AppRoutesNames.application, (route) => false,);
                  },
                  text: 'Login'),
            ],
          ),
        ),
      ),
    );
  }
}
