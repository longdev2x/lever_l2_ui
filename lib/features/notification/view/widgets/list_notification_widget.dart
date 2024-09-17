import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/model/notification_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/notification/view/widgets/notification_item.dart';

final List<NotificationEntity> notifications = [
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 5),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 5),
      ),
      authorName: 'Thu Phương',
      authorAvatar: ImageRes.imgAvatar2,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 6),
      ),
      authorName: 'Chi Dân',
      authorAvatar: ImageRes.imgAvatar3,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 8),
      ),
      authorName: 'Sơn Tùng',
      authorAvatar: ImageRes.imgAvatarDefault,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 2),
      ),
      authorName: 'Cao Thái Sơn',
      authorAvatar: ImageRes.imgAvatarPost,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 10),
      ),
      authorName: 'Hoàng Hà',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 3),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar2,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 8),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar3,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 10),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatarDefault,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 8),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatarPost,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 9),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar2,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 5),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 5),
      ),
      authorName: 'Thu Phương',
      authorAvatar: ImageRes.imgAvatar3,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 6),
      ),
      authorName: 'Chi Dân',
      authorAvatar: ImageRes.imgAvatar2,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 8),
      ),
      authorName: 'Sơn Tùng',
      authorAvatar: ImageRes.imgAvatarDefault,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 2),
      ),
      authorName: 'Cao Thái Sơn',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 10),
      ),
      authorName: 'Hoàng Hà',
      authorAvatar: ImageRes.imgAvatar2,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 3),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 8),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 10),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: false),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 8),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: true),
  NotificationEntity(
      content: 'has a new story up',
      date: DateTime.now().subtract(
        const Duration(hours: 9),
      ),
      authorName: 'Nhật Long',
      authorAvatar: ImageRes.imgAvatar1,
      isRead: false),
];

class ListNotificationWidget extends StatelessWidget {
  const ListNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NotificationEntity> listNew = notifications
        .where((obj) => DateTime.now().difference(obj.date).inHours < 5)
        .toList();
    final List<NotificationEntity> listEarlier = notifications
        .where((obj) => DateTime.now().difference(obj.date).inHours >= 5)
        .toList();
    return Column(
      children: [
        if (listNew.isNotEmpty) _title('New', false),
        if (listNew.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            itemCount: listNew.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return NotificationItem(objNotification: listNew[index]);
            },
          ),
        if (listEarlier.isNotEmpty) _title('Earlier', true),
        if (listEarlier.isNotEmpty)
          ListView.builder(
            shrinkWrap: true,
            itemCount: listEarlier.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) {
              return NotificationItem(objNotification: listEarlier[index]);
            },
          ),
      ],
    );
  }

  Widget _title(String name, bool isRead) => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: !isRead
                ? [
                    const Color(0x33384CFF),
                    const Color(0x3300A3FF),
                  ]
                : [
                    const Color(0x1A384CFF),
                    const Color(0x1A00A3FF),
                  ],
          ),
        ),
        child: AppText16(name, fontWeight: FontWeight.w700),
      );
}
