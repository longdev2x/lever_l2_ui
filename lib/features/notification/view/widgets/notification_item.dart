import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/notification_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class NotificationItem extends StatelessWidget {
  final NotificationEntity objNotification;
  const NotificationItem({super.key, required this.objNotification});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: objNotification.isRead
              ? [
                  const Color(0x1A384CFF),
                  const Color(0x1A00A3FF),
                ]
              : [
                  const Color(0x33384CFF),
                  const Color(0x3300A3FF),
                ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 8.h,
        ),
        child: Row(
          children: [
            AppImageAsset(objNotification.authorAvatar,
                width: 50.w, height: 50.w, radius: 10),
            SizedBox(width: 15.w),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: objNotification.authorName,
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: objNotification.content,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const AppText12('What\'s your reaction?',
                    fontWeight: FontWeight.w400),
                AppText11(
                  DateTime.now()
                      .difference(objNotification.date)
                      .inHours
                      .toString(),
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF555555),
                ),
              ],
            ),
            const Spacer(),
            const AppImageAsset(ImageRes.icThreeDotHori3, width: 18, height: 4),
          ],
        ),
      ),
    );
  }
}
