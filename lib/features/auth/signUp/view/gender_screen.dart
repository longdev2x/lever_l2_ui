import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_appbar.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/features/auth/signUp/view/widgets/gender_picker.dart';

class GenderScreen extends StatelessWidget {
  const GenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBarNormal('Gender', context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 40.h),
        child: Column(
          children: [
            const AppText18(
              'What,s your gender',
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            const AppText12(
              'You can change who sees your gennder on your profile later.',
              fontWeight: FontWeight.w400,
              color: Color(0xFF999999),
            ),
            SizedBox(height: 70.h),
            GenderPickerWidget(
              text: 'Female',
              groupValue: 'Female',
              onChanged: (value) {},
            ),
            GenderPickerWidget(
              text: 'Male',
              groupValue: '',
              onChanged: (value) {},
            ),
            GenderPickerWidget(
              text: 'Custom',
              subText:
                  'Select custome to choose another gender, \n or if you’d rather not say',
              groupValue: '',
              onChanged: (value) {},
            ),
            SizedBox(height: 176.h),
            AppElevatedButton(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutesNames.phone);
                },
                text: 'Next'),
          ],
        ),
      ),
    );
  }
}
