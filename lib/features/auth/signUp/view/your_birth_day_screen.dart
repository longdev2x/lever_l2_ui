import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_appbar.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';

class YourBirthDayScreen extends StatefulWidget {
  const YourBirthDayScreen({super.key});

  @override
  State<YourBirthDayScreen> createState() => _YourBirthDayScreenState();
}

class _YourBirthDayScreenState extends State<YourBirthDayScreen> {
  DateTime date = DateTime.now().subtract(const Duration(days: 7300));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBarNormal('Birthday', context: context),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: DatePickerWidget(
                pickerTheme: DateTimePickerTheme(
                  backgroundColor: Colors.transparent,
                  itemTextStyle:
                      TextStyle(color: Colors.black, fontSize: 14.sp),
                  dividerColor: Colors.black,
                ),
                dateFormat: "dd-MMM-yyyy",
                firstDate: DateTime.now().subtract(const Duration(days: 36500)),
                lastDate: DateTime.now(),
                initialDate: date,
                onChange: (dateTime, selectedIndex) {
                  setState(() {
                    date = dateTime;
                  });
                },
              ),
            ),
            SizedBox(height: 66.h),
            AppText14(
              '${birth(date)} Years old',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            SizedBox(height: 90.h),
            AppElevatedButton(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutesNames.gender);
                },
                text: 'Next'),
          ],
        ),
      ),
    );
  }

  int birth(DateTime date) {
    DateTime today = DateTime.now();
    int age = today.year - date.year;

    if (today.month < date.month ||
        (today.month == date.month && today.day < date.day)) {
      age--;
    }
    return age;
  }
}
