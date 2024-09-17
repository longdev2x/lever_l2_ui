import 'package:uuid/uuid.dart';

class StoryEntity {
  final String id;
  final String userId;
  final String userName;
  final String? avatar;
  final String thumbnail;
  final String? music;
  final DateTime date;

  StoryEntity({
    String? id,
    required this.userId,
    required this.userName,
    required this.avatar,
    required this.thumbnail,
    required this.music,
    required this.date,
  }) : id = id ?? const Uuid().v4();
}
