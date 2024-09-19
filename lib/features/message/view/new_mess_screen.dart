import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/message/view/widgets/message_contact_widget.dart';
import 'package:lever_l2/features/message/view/widgets/new_mess_item.dart';

class NewMessScreen extends StatefulWidget {
  const NewMessScreen({super.key});

  @override
  State<NewMessScreen> createState() => _NewMessScreenState();
}

class _NewMessScreenState extends State<NewMessScreen> {
  bool valueA = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 170.h),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  AppBar(
                    title: const AppText18(
                      'New message',
                      fontWeight: FontWeight.w500,
                    ),
                    centerTitle: false,
                    actions: [
                      SizedBox(
                        height: 20.h,
                        width: 38.w,
                        child: Switch(
                            value: valueA,
                            onChanged: (value) {
                              setState(() {
                                valueA = !valueA;
                              });
                            }),
                      ),
                      SizedBox(width: 20.h),
                    ],
                    titleSpacing: 0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: Row(
                        children: [
                          const AppText11(
                            'To: ',
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Type a name or group',
                                hintStyle: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xFF555555),
                                  fontWeight: FontWeight.w400,
                                ),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 12.h),
                                border: _border(),
                                enabledBorder: _border(),
                                errorBorder: _border(),
                                focusedBorder: _border(),
                                disabledBorder: _border(),
                                focusedErrorBorder: _border(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const AppDivider(),
                  SizedBox(height: 17.h),
                  _rowItem(
                      text: 'Create a new group', icon: ImageRes.icFriend2),
                  SizedBox(height: 16.5.h),
                  _rowItem(
                      text: 'Create a new video call',
                      icon: ImageRes.icAddCamera2),
                  SizedBox(height: 17.h),
                  const AppDivider(),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              const AppText12(
                'Suggested',
                fontWeight: FontWeight.w400,
                color: Color(0xFF555555),
              ),
              SizedBox(height: 15.h),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: usersContact.length,
                  itemBuilder: (ctx, index) {
                    return NewMessItem(objUser: usersContact[index]);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  UnderlineInputBorder _border() {
    return const UnderlineInputBorder(borderSide: BorderSide.none);
  }

  Widget _rowItem({required String text, required String icon}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        children: [
          AppImageAsset(icon, width: 20.w, height: 17.w),
          SizedBox(width: 13.5.w),
          AppGradientText(text, fontSize: 12.sp, fontWeight: FontWeight.w500),
        ],
      ),
    );
  }
}
