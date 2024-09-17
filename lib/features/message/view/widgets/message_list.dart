import 'package:flutter/material.dart';
import 'package:lever_l2/common/model/message_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/message/view/widgets/message_item.dart';

final List<ChatEntity> chats = [
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok bạn',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 10)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar2,
      isOnline: false,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Rồi nè',
      lastMsgUserId: 'friendID',
      time: DateTime.now().subtract(const Duration(hours: 2)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar3,
      isOnline: true,
      unread: false),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nha',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 6)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatarDefault,
      isOnline: false,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Um ha',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar2,
      isOnline: true,
      unread: false),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Đúng rồi nè',
      lastMsgUserId: 'friendId',
      time: DateTime.now().subtract(const Duration(hours: 8)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatarDefault,
      isOnline: true,
      unread: false),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok ạ',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar2,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok la',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 4)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: false,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok',
      lastMsgUserId: 'friendId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 9)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'friendId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'friendId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
  ChatEntity(
      userId: 'myUserId',
      partnerId: 'test',
      lastMsg: 'Ok nhé',
      lastMsgUserId: 'myUserId',
      time: DateTime.now().subtract(const Duration(hours: 5)),
      partnerUsername: 'Thu Phương',
      partnerAvatar: ImageRes.imgAvatar1,
      isOnline: true,
      unread: true),
];

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: chats.length,
        itemBuilder: (ctx, index) {
          return MessageItem(
            objChat: chats[index],
          );
        });
  }
}
