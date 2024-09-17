import 'package:uuid/uuid.dart';

class FriendshipEntity {
  final String id;
  final String userId;
  final String friendId;
  final String status;
  final String senderUsername;
  final String? senderAvatar;
  final DateTime createdAt;

  FriendshipEntity({
    String? id,
    required this.userId,
    required this.friendId,
    required this.status,
    required this.senderUsername,
    this.senderAvatar,
    required this.createdAt,
  }) : id = id ?? const Uuid().v4();
}
