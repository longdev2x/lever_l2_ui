import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class MessageHeaderWidget extends StatelessWidget {
  const MessageHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const AppImageAsset(ImageRes.imgAvatarDefault, width: 40, height: 40, radius: 10,),
      SizedBox(width: 15.w),
      const AppText24('Chats', fontWeight: FontWeight.w700),
      const Spacer(),
      const AppImageAsset(ImageRes.icMessCam, width: 40, height: 40, radius: 10,),
      SizedBox(width: 12.w),
      AppImageAsset(onTap: () {
        Navigator.of(context).pushNamed(AppRoutesNames.newMess);
      },ImageRes.icMessWrite, width: 40, height: 40, radius: 10,),
    ],);
  }
}