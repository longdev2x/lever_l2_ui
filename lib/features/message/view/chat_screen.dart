import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/model/message_entity.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/message/view/widgets/chat_item.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void handleMessTap(bool onTap) {
    setState(() {
      isMessTap = onTap;
    });
  }

  bool isMessTap = false;
  @override
  Widget build(BuildContext context) {
    final ChatEntity objChat =
        ModalRoute.of(context)!.settings.arguments as ChatEntity;
    return Scaffold(
      appBar: AppBar(
        leading: AppImageAsset(
          ImageRes.icBackMess,
          width: 12.62.w,
          height: 22.34.h,
          onTap: () {
            Navigator.of(context).pop();
          },
          fit: BoxFit.none,
        ),
        titleSpacing: 0,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(AppRoutesNames.chatInfor, arguments: objChat);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImageAsset(
                objChat.partnerAvatar ?? ImageRes.imgAvatarDefault,
                width: 40.w,
                height: 40.w,
                radius: 10,
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText16(objChat.partnerUsername,
                      fontWeight: FontWeight.w600),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: const AppText10(
                      'Messager',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF555555),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          AppImageAsset(
            onTap: () {
              AppToast.showToast('Tappp');
            },
            ImageRes.icCallMess,
            width: 21.w,
            height: 21.w,
          ),
          SizedBox(width: 25.w),
          AppImageAsset(
            onTap: () {
              AppToast.showToast('Tappp');
            },
            ImageRes.icVideoMess,
            width: 25.w,
            height: 16.67.w,
          ),
          SizedBox(width: 25.w),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              AppImageAsset(
                objChat.partnerAvatar ?? ImageRes.imgAvatarDefault,
                width: 80.w,
                height: 80.w,
                radius: 10,
              ),
              SizedBox(height: 10.h),
              AppText16(objChat.partnerUsername, fontWeight: FontWeight.w700),
              SizedBox(height: 7.h),
              const AppText12('You’re friends on Facebook',
                  fontWeight: FontWeight.w400),
              SizedBox(height: 21.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  AppImageAsset(
                    objChat.partnerAvatar ?? ImageRes.imgAvatarDefault,
                    width: 40.w,
                    height: 40.w,
                    radius: 10,
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 30.w,
                    child: Container(
                      width: 40.w,
                      height: 40.w,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.w, color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: AppImageAsset(
                        ImageRes.imgAvatarDefault,
                        width: 40.w,
                        height: 40.w,
                        radius: 10,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.h),
              AppText11(
                'Say hi to your new Facebook friend, ${objChat.partnerUsername.split(' ')[0]}',
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: messages.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      if (index == 0) {
                        return ChatItem(objMess: messages[0], isFirst: true);
                      }
                      return ChatItem(
                          objMess: messages[index],
                          isFirst: messages[index].senderId !=
                              messages[index - 1].senderId);
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            children: [
              if (isMessTap)
                AppImageAsset(onTap: () {
                  AppToast.showToast('Tapppp');
                }, ImageRes.icArrowRight, width: 20.w, height: 20.w),
              if (!isMessTap)
                Row(
                  children: [
                    AppImageAsset(onTap: () {
                      AppToast.showToast('Tapppp');
                    }, ImageRes.icNavMessMenu, width: 20.w, height: 20.w),
                    SizedBox(width: 21.15.w),
                    AppImageAsset(onTap: () {
                      AppToast.showToast('Tapppp');
                    }, ImageRes.icNavMessCam, width: 20.w, height: 20.w),
                    SizedBox(width: 21.15.w),
                    AppImageAsset(onTap: () {
                      AppToast.showToast('Tapppp');
                    }, ImageRes.icNavMessImage, width: 20.w, height: 20.w),
                    SizedBox(width: 21.15.w),
                    AppImageAsset(onTap: () {
                      AppToast.showToast('Tapppp');
                    }, ImageRes.icNavMessVoice, width: 20.w, height: 20.w),
                    SizedBox(width: 21.15.w),
                  ],
                ),
              Expanded(
                  child: Container(
                constraints: BoxConstraints(maxHeight: 36.h),
                decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: EdgeInsets.only(left: 15.w, right: 5.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onTap: () => handleMessTap(true),
                          onTapOutside: (event) => handleMessTap(false),
                          decoration: InputDecoration(
                              hintText: 'Aa',
                              border: _border(),
                              errorBorder: _border(),
                              enabledBorder: _border(),
                              focusedBorder: _border(),
                              disabledBorder: _border(),
                              focusedErrorBorder: _border(),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 9.h)),
                        ),
                      ),
                      AppImageAsset(
                        onTap: () {
                          AppToast.showToast('Tapppp');
                        },
                        ImageRes.icNavMessSticker,
                        width: 20.w,
                        height: 20.w,
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(width: 21.15.w),
              isMessTap
                  ? AppImageAsset(onTap: () {
                      AppToast.showToast('Tapppp');
                    }, ImageRes.icSendMessage, width: 30.w, height: 30.w, color: Colors.purple,)
                  : AppImageAsset(onTap: () {
                      AppToast.showToast('Tapppp');
                    }, ImageRes.icNavMessLike, width: 20.w, height: 20.w),
            ],
          ),
        ),
      ),
    );
  }

  UnderlineInputBorder _border() =>
      const UnderlineInputBorder(borderSide: BorderSide.none);
}

final List<MessageEntity> messages = [
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'sticker',
      content: ImageRes.icStickerHi,
      timestamp: DateTime.now().subtract(const Duration(hours: 10))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'Hello Bạn ơi',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'Bạn đang làm gì đấy',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'text',
      content: 'It’s morning in Mumbai 😎',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'What is the most popular meal in mumbai??',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'text',
      content: 'I think top two are:',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'image',
      content: [ImageRes.imgBanner1, ImageRes.imgBanner1],
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'sticker',
      content: ImageRes.icStickerHi,
      timestamp: DateTime.now().subtract(const Duration(hours: 10))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'Hello Bạn ơi',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'Bạn đang làm gì đấy',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'text',
      content: 'It’s morning in Mumbai 😎',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'What is the most popular meal in mumbai??',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'text',
      content: 'I think top two are:',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'sticker',
      content: ImageRes.icStickerHi,
      timestamp: DateTime.now().subtract(const Duration(hours: 10))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'Hello Bạn ơi',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'Bạn đang làm gì đấy',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'text',
      content: 'It’s morning in Mumbai 😎',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'friendId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'myUserId',
      type: 'text',
      content: 'What is the most popular meal in mumbai??',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
  MessageEntity(
      senderId: 'myUserId',
      senderAvatar: ImageRes.imgAvatar2,
      receiverId: 'friendId',
      type: 'text',
      content: 'I think top two are:',
      timestamp: DateTime.now().subtract(const Duration(hours: 8))),
];
