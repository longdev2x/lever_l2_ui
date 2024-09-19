import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_appbar.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class TermScreen extends StatelessWidget {
  const TermScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBarNormal('Terms & Privacy', context: context),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
          child: Column(
            children: [
              const AppText18(
                'Finishing signing up',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 10.h),
              const AppText12(
                'By tapping Sign up, you agree to our',
                fontWeight: FontWeight.w400,
                color: Color(0xFF999999),
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const AppText12(
                      'Terms, Data Policy',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF384CFF),
                    ),
                  ),
                  const AppText12(
                    ' and ',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF999999),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const AppText12(
                      'Cookies Policy',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF384CFF),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 158.h),
              AppElevatedButton(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(AppRoutesNames.application, (route) => false,);
                },
                text: 'Sign up',
              ),
              SizedBox(height: 31.h),
              GestureDetector(
                onTap: () {},
                child: const AppText12(
                  'Sign up without updating my contact',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF384CFF),
                ),
              ),
              const Spacer(),
              const AppText12(maxLines: 6, textAlign: TextAlign.center ,fontWeight: FontWeight.w300, color: Colors.black, 'The Facebook company is now Meta. While our company name is changing, we are continuing to offer the same products, includingthe Facebook app from Meta. Our Data Policy and Terms of Service remain in effect, and this name change does not affect how we use or share data. Learn more about Meta and our vision for the metaverse.'),
            ],
          ),
        ),
      ),
    );
  }
}
