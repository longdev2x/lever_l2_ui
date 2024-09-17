import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/user_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/message/view/widgets/message_contact_item.dart';

final List<UserEntity> users = [
  UserEntity(name: 'Nhật Long', isOnline: true,avatar: ImageRes.imgAvatar1),
  UserEntity(name: 'Thu Phương', isOnline: true,avatar: ImageRes.imgAvatar2),
  UserEntity(name: 'Chi Dân', isOnline: false,avatar: ImageRes.imgAvatar3),
  UserEntity(name: 'Sơn Tùng', isOnline: true,avatar: ImageRes.imgAvatarDefault),
  UserEntity(name: 'Phương Xinh', isOnline: true,avatar: ImageRes.imgAvatar3),
  UserEntity(name: 'Nhật Long', isOnline: false,avatar: ImageRes.imgAvatar1),
  UserEntity(name: 'Nhật Long', isOnline: true,avatar: ImageRes.imgAvatar3),
  UserEntity(name: 'Nhật Long', isOnline: true,avatar: ImageRes.imgAvatar2),
];

class MessageContactWidget extends StatelessWidget {
  const MessageContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.w, horizontal: 5.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFEEEEEE),
                  ),
                  child: const AppImageAsset(
                    ImageRes.icCameraAdd,
                    width: 38,
                    height: 38,
                  ),
                ),
                SizedBox(height: 1.h),
                ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 38.w),
                    child: const AppText10(
                      'Nhật Long',
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                    )),
              ],
            ),
            SizedBox(width: 14.w),
            SizedBox(
              height: 90.h,
              child: ListView.builder(
                  itemCount: users.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return MessageContactItem(
                      objUser: users[index],
                      onTap: () {},
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
