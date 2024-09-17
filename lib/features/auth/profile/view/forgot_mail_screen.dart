import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class ForgotMailScreen extends StatelessWidget {
  const ForgotMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Your Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            children: [
              const AppText18(
                'Enter your email address',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 30.h),
              const AppTextFormField(lable: 'Number'),
              SizedBox(height: 50.h),
              AppElevatedButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutesNames.otpCode);
                  },
                  text: 'Find Your Account'),
              SizedBox(height: 296.h),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutesNames.forgotPhone);
                },
                child: const AppText15('Search by number insted', color: Color(0xFF384CFF), fontWeight: FontWeight.w500,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
