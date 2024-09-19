import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/model/story_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class StoryDetailScreen extends StatelessWidget {
  const StoryDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final StoryEntity objStory =
        ModalRoute.of(context)!.settings.arguments as StoryEntity;
    return Scaffold(
      body: Stack(
        children: [
          AppImageAsset(
            objStory.thumbnail,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 58.53.h,
            left: 15.w,
            right: 15.w,
            child: const LinearProgressIndicator(
              color: Color(0xFF999999),
              backgroundColor: Color(0xFFDDDDDD),
            ),
          ),
          Positioned(
            top: 80.h,
            left: 20.w,
            right: 20.w,
            child: SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(
                          width: 1.5,
                          color: const Color(0xFF384CFF),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                          objStory.avatar ?? ImageRes.imgAvatarDefault,
                        ))),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          AppText16(
                            objStory.userName,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 10.w),
                          AppText16(
                            '${DateTime.now().subtract(Duration(hours: objStory.date.hour)).hour} h',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const AppImageAsset(
                            ImageRes.icMusic,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.w),
                          AppText16(
                            objStory.music,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h),
                    child: const AppImageAsset(
                      ImageRes.icThreeDotHori,
                      width: 20,
                      height: 4,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h),
                    child: AppImageAsset(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        ImageRes.icClose,
                        width: 10,
                        height: 10,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 24.h,
            left: 22.w,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  AppImageAsset(
                    ImageRes.icShare,
                    width: 35.w,
                    height: 35.w,
                  ),
                  SizedBox(width: 15.w),
                  Container(
                    width: 180.w,
                    height: 35.w,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0x80EEEEEE),
                    ),
                    child: const AppText15(
                      'Send message',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Row(
                    children: [
                      AppImageAsset(
                        ImageRes.icReactStoryLike,
                        onTap: () {
                          AppToast.showToast('Tappp');
                        },
                        width: 39.w,
                        height: 39.w,
                      ),
                      SizedBox(width: 10.w),
                      AppImageAsset(
                        ImageRes.icReactStoryLove,
                        onTap: () {
                          AppToast.showToast('Tappp');
                        },
                        width: 39,
                        height: 39.w,
                      ),
                      SizedBox(width: 10.w),
                      AppImageAsset(
                        ImageRes.icReactStoryLoveLove,
                        onTap: () {
                          AppToast.showToast('Tappp');
                        },
                        width: 39,
                        height: 39.w,
                      ),
                      SizedBox(width: 10.w),
                      AppImageAsset(
                        ImageRes.icReactStoryLike,
                        onTap: () {
                          AppToast.showToast('Tappp');
                        },
                        width: 39,
                        height: 39.w,
                      ),
                      SizedBox(width: 10.w),
                      AppImageAsset(
                        ImageRes.icReactStoryLove,
                        onTap: () {
                          AppToast.showToast('Tappp');
                        },
                        width: 39,
                        height: 39.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
