import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/user_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class MessageContactItem extends StatelessWidget {
  final UserEntity objUser;
  final Function() onTap;
  const MessageContactItem(
      {super.key, required this.objUser, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Column(
              children: [
                AppImageAsset(
                  objUser.avatar ?? ImageRes.imgAvatarDefault,
                  width: 50,
                  height: 50,
                  radius: 10,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 1.h),
                ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 38.w),
                    child: AppText10(
                      objUser.name,
                      fontWeight: FontWeight.w400,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    )),
              ],
            ),
          ),
          if (objUser.isOnline)
            Positioned(
              bottom: 36.h,
              right: 9.w,
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
    );
  }
}
