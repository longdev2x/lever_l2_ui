import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/message_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class MessageItem extends StatelessWidget {
  final ChatEntity objChat;
  const MessageItem({super.key, required this.objChat});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      decoration: BoxDecoration(
          border: Border.all(
        color: const Color(0xFF384CFF),
        width: 0.5,
      )),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              AppImageAsset(
                objChat.partnerAvatar ?? ImageRes.imgAvatar3,
                width: 50.w,
                height: 50.w,
                radius: 10,
              ),
              if (objChat.isOnline)
                Positioned(
                  bottom: -5.h,
                  right: -5.w,
                  child: Container(
                    width: 15.w,
                    height: 15.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                  ),
                ),
            ],
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText14(objChat.partnerUsername, fontWeight: FontWeight.w600),
              Row(
                children: [
                  AppText12(
                    objChat.lastMsgUserId == objChat.userId
                        ? 'You: ${objChat.lastMsg}. '
                        : '${objChat.lastMsg}. ',
                    fontWeight: FontWeight.w400,
                  ),
                  DateTime.now().day == objChat.time.day
                      ? AppText12(
                          '${objChat.time.hour} AM',
                          fontWeight: FontWeight.w400,
                        )
                      : AppText12(
                          _getDay(objChat.time.weekday),
                          fontWeight: FontWeight.w400,
                        )
                ],
              ),
            ],
          ),
          const Spacer(),
          AppImageAsset(
            objChat.unread ? ImageRes.icUnread : ImageRes.icRead,
            width: 15.w,
            height: 15.w,
          )
        ],
      ),
    );
  }

  String _getDay(int weekday) {
    switch (weekday) {
      case 1:
        return 'monday';
      case 2:
        return 'Thusday';
      case 3:
        return 'Widday';
      case 4:
        return 'Thusday';
      case 5:
        return 'Friday';
      case 6:
        return 'Satuday';
      default:
        return 'Sunday';
    }
  }
}
