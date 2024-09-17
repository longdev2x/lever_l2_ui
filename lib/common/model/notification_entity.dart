import 'package:uuid/uuid.dart';

class NotificationEntity {
  final String id;
  final String content;
  final DateTime date;

  final String authorName;
  final String authorAvatar;
  final bool isRead;

  NotificationEntity({
    String? id,
    required this.content,
    required this.date,
    required this.authorName,
    required this.authorAvatar,
    required this.isRead,
  }) : id = id ?? const Uuid().v4();
}
