import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/user_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class PersonalProfileTopWidget extends StatelessWidget {
  final UserEntity objUser;
  const PersonalProfileTopWidget({super.key, required this.objUser});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 349.h,
      child: Stack(
        children: [
          AppImageAsset(
            objUser.cover ?? ImageRes.imgCoverDefault,
            width: double.infinity,
            height: 250.h,
          ),
          Positioned(
            top: 130.h,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                width: 180.w,
                height: 180.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    width: 7.w,
                    color: Colors.white,
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      objUser.avatar ?? ImageRes.imgAvatarDefault,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: AppImageAsset(
                    ImageRes.icCamera,
                    width: 25.w,
                    height: 25.w,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200.h,
            right: 20.w,
            child: AppImageAsset(
              ImageRes.icCamera,
              width: 30.w,
              height: 30.w,
            ),
          ),
          Positioned(
              top: 315.h,
              left: 0,
              right: 0,
              child: Center(
                  child: AppText24(objUser.name, fontWeight: FontWeight.w700))),
        ],
      ),
    );
  }
}
