import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class WhatYourNameScreen extends StatelessWidget {
  const WhatYourNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Column(
          children: [
            const AppText18(
              'Whay’s your name?',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            const AppText12(
              'Enter the name you use in real life.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            SizedBox(height: 50.h),
             Row(children: [
              const Expanded(child: AppTextFormField(lable: 'First Name',),),
              SizedBox(width: 20.w,),
              const Expanded(child: AppTextFormField(lable: 'Last Name')),
            ],),
            SizedBox(height: 72.h),
            AppElevatedButton(onTap: () {
              Navigator.of(context).pushNamed(AppRoutesNames.birthday);
            }, text: 'Next'),
          ],
        ),
      ),
    );
  }
}
