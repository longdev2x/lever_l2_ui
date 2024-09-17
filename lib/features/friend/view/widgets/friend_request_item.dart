import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_button.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/friendship_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class FriendRequestItem extends StatelessWidget {
  final FriendshipEntity objFriendShip;
  const FriendRequestItem({super.key, required this.objFriendShip});

  @override
  Widget build(BuildContext context) {
    final int mutualFriend = DateTime.now().difference(objFriendShip.createdAt).inDays +5;
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h, left: 20.w, right: 20.w),
      child: Row(
        children: [
          AppImageAsset(
            objFriendShip.senderAvatar ?? ImageRes.imgAvatarDefault,
            width: 80.w,
            height: 80.w,
            radius: 15,
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText16(objFriendShip.senderUsername, fontWeight: FontWeight.w600, color: Colors.black,),
                        AppText14('$mutualFriend mutual friend', fontWeight: FontWeight.w400, color: const Color(0xFF999999),),
                      ],
                    ),
                    AppText14(
                        '${DateTime.now().difference(objFriendShip.createdAt).inDays ~/ 7}w', fontWeight: FontWeight.w400, color: const Color(0xFF999999),)
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Expanded(child: AppElevatedButton(onTap: () {}, text: 'Confirm')),
                    SizedBox(width: 15.w),
                    Expanded(child: AppElevatedButtonOnlyBackground(onTap: () {}, text: 'Delete')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
