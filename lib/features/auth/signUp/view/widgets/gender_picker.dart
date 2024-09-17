import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';

class GenderPickerWidget extends StatelessWidget {
  final String text;
  final String? subText;
  final String groupValue;
  final void Function(String? value) onChanged;
  const GenderPickerWidget({super.key, required this.text, this.subText,required this.groupValue, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(
          color: Color(0xFFAAAAAA),
          width: 1,
        ))
      ),
      child: Row(
        crossAxisAlignment: subText != null ? CrossAxisAlignment.end : CrossAxisAlignment.center,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText14(text, fontWeight: FontWeight.w600),
            if (subText != null) 
              SizedBox(height: 5.h),
            if (subText != null)
              AppText10(subText, fontWeight: FontWeight.w400, color: const Color(0xFF999999),),
          ],
        ),
        const Spacer(),
        Radio<String>(value: text, groupValue: groupValue, onChanged: onChanged),
      ],),
    );
  }
}