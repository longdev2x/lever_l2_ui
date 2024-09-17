import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_text_field.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage(
              ImageRes.imgBgLogin,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 372.h),
              const AppTextFormField(lable: 'Phone or Email'),
              const AppTextFormField(lable: 'Password', isPass: true,),
              SizedBox(height: 50.h),
              AppElevatedButton(onTap: () {}, text: 'Log In'),
              SizedBox(height: 20.h),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutesNames.forgotPhone);
                  },
                  child: const AppText14(
                    'Forgot Password',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF384CFF),
                  )),
              SizedBox(height: 50.h),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      height: 1,
                      color: Color(0xFFAAAAAA),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: const AppText14(
                      'OR',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF999999),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      height: 1,
                      color: Color(0xFFAAAAAA),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              AppOutlineButton(onTap: () {
                Navigator.of(context).pushNamed(AppRoutesNames.joinFacebook);
              }, text: 'Create new Facebook account'),
            ],
          ),
        ),
      ),
    );
  }
}
