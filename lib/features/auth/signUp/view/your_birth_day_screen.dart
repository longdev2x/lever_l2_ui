import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class YourBirthDayScreen extends StatelessWidget {
  const YourBirthDayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Birthday'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Column(
          children: [
            const AppText18(
              'What’s your birthday?',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            const AppText12(
              'Choose your date of birth.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            const AppText12(
              'You can always make this private later.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            SizedBox(height: 92.h),
            SizedBox(
              height: 111.h,
              width: 300.w,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                dateOrder: DatePickerDateOrder.dmy,
                onDateTimeChanged: (value) {},
              ),
            ),
            SizedBox(height: 66.h),
            const AppText14(
              '25 Years old',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            SizedBox(height: 90.h),
            AppElevatedButton(onTap: () {
              Navigator.of(context).pushNamed(AppRoutesNames.gender);
            }, text: 'Next'),
          ],
        ),
      ),
    );
  }
}
