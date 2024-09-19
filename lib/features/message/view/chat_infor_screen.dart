import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/model/message_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class ChatInforScreen extends StatelessWidget {
  const ChatInforScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ChatEntity objChat =
        ModalRoute.of(context)!.settings.arguments as ChatEntity;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.center,
            child: AppImageAsset(
              objChat.partnerAvatar ?? ImageRes.imgAvatarDefault,
              width: 80.w,
              height: 80.w,
              radius: 10,
            ),
          ),
          SizedBox(height: 10.h),
          Align(
            alignment: Alignment.center,
            child:
                AppText16(objChat.partnerUsername, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 61.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AppImageAsset(
                      ImageRes.icChatInforCall,
                      onTap: () {
                        AppToast.showToast('Tappp');
                      },
                    ),
                    SizedBox(height: 15.h),
                    const AppText12(
                      'Audio',
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Column(
                  children: [
                    AppImageAsset(
                      ImageRes.icChatInforVideo,
                      onTap: () {
                        AppToast.showToast('Tappp');
                      },
                    ),
                    SizedBox(height: 15.h),
                    const AppText12(
                      'Video',
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Column(
                  children: [
                    AppImageAsset(
                      ImageRes.icChatInforProfile,
                      onTap: () {
                        AppToast.showToast('Tappp');
                      },
                    ),
                    SizedBox(height: 15.h),
                    const AppText12(
                      'Profile',
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
                Column(
                  children: [
                    AppImageAsset(
                      ImageRes.icChatInforMute,
                      onTap: () {
                        AppToast.showToast('Tappp');
                      },
                    ),
                    SizedBox(height: 15.h),
                    const AppText12(
                      'Mute',
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          const AppDivider(),
          SizedBox(height: 15.h),
          _appText('Theme'),
          _appText('Emoji'),
          _appText('Nickname'),
          _appText('Word effects'),
          const AppDivider(),
          SizedBox(height: 15.h),
          _appText2('More Actions'),
          _appText('View photos & videos'),
          _appText('Search in conversation'),
          _appText('Secret conversation'),
          _appText('Create group with Maisy'),
          const AppDivider(),
          SizedBox(height: 15.h),
          _appText2('Privacy'),
          _appText('Notifications'),
          _appText('Block'),
          _appText('Report'),
        ],
      ),
    );
  }

  Widget _appText(String text) => Padding(
    padding: EdgeInsets.only(left: 20.w, bottom: 15.h),
    child: AppText12(text, fontWeight: FontWeight.w400),
  );
  Widget _appText2(String text) => Padding(
    padding: EdgeInsets.only(left: 20.w, bottom: 15.h),
    child: AppText10(
          text,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF555555),
        ),
  );
}
