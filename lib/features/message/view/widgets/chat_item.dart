import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/message_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class ChatItem extends StatelessWidget {
  final MessageEntity objMess;
  final bool isFirst;
  const ChatItem({super.key, required this.objMess, required this.isFirst});

  @override
  Widget build(BuildContext context) {
    //UserId
    const String currentUserId = 'myUserId';
    final isMe = objMess.senderId == currentUserId;
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isMe && isFirst)
            AppImageAsset(
              objMess.senderAvatar ?? ImageRes.imgAvatarDefault,
              width: 26.w,
              height: 26.w,
              radius: 4,
            ),
          if (!isMe && isFirst) SizedBox(width: 5.w),
          if (!isMe && !isFirst) SizedBox(width: 31.w),
          _buildMessContent(isMe),
          if (isMe) SizedBox(width: 5.w),
          if (isMe) AppImageAsset(ImageRes.icTick, width: 16.w, height: 16.w),
        ],
      ),
    );
  }

  Widget _buildMessContent(isMe) {
    switch (objMess.type) {
      case 'sticker':
        return AppImageAsset(objMess.content as String);
      case 'image':
        final List<String> images = objMess.content as List<String>;
        if (images.isNotEmpty) {
          return Container(
            constraints: BoxConstraints(maxWidth: 0.7.sw),
            child: Wrap(
              alignment: isMe ? WrapAlignment.end : WrapAlignment.start,
              spacing: 2.w,
              runSpacing: 2.h,
              children: [
                ...images.map((e) => AppImageAsset(
                      e,
                      width: 110.w,
                      height: 62.h,
                      fit: BoxFit.cover,
                    ))
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      default:
        return Container(
          constraints: BoxConstraints(maxWidth: 0.6.sw),
          padding:
              EdgeInsets.only(top: 8.h, bottom: 7.h, left: 11.w, right: 11.w),
          decoration: BoxDecoration(
            color: !isMe ? const Color(0xFFEEEEEE) : null,
            gradient: isMe
                ? const LinearGradient(colors: [
                    Color(0xFF384CFF),
                    Color(0xFF00A3FF),
                  ])
                : null,
            borderRadius: isMe
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(0),
                  )
                : const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(10),
                  ),
          ),
          child: AppText14(
            objMess.content as String,
            fontWeight: FontWeight.w400,
            color: isMe ? Colors.white : Colors.black,
            maxLines: 100,
          ),
        );
    }
  }
}
