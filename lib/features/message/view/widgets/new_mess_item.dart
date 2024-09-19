import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/user_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class NewMessItem extends StatelessWidget {
  final UserEntity objUser;
  const NewMessItem({super.key, required this.objUser});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.h),
      child: Row(children: [
        AppImageAsset(objUser.avatar ?? ImageRes.imgAvatarDefault, width: 50.w, height:  50.w, radius: 10,),
        SizedBox(width: 15.w),
        AppText14(objUser.name, fontWeight: FontWeight.w600),
      ],),
    );
  }
}