import 'package:lever_l2/common/utils/image_res.dart';
import 'package:uuid/uuid.dart';

class PostEntity {
  final String postId;
  final String content;
  final Subject subject;
  final DateTime date;
  final String type;
  final String? location;
  final List<String> images;

  //Stream
  final DateTime? startTime;
  final DateTime? endTime; 
  final int? viewerCount; 
  final String? streamUrl;
  final int? duration;
  final String? thumbnail;

  final String authorId;
  final String authorName;
  final String? authorAvatar;

  final List<Tagger> taggers;

  final List<ReactionInfor> reactions;
  final int commentCounts;

  PostEntity({
    String? postId,
    required this.content,
    required this.subject,
    required this.date,
    required this.type,
    this.location,
    this.startTime,
    this.endTime,
    this.viewerCount,
    this.streamUrl,
    this.duration,
    this.thumbnail,
    required this.images,
    required this.authorId,
    required this.authorName,
    this.authorAvatar,
    required this.taggers,
    required this.reactions,
    required this.commentCounts,
  }) : postId = postId ?? const Uuid().v4();
}

final Map<String, Subject> subjects = {
  'private': const Subject(name: 'Private', icon: ImageRes.icSubjectPrivate),
  'friend': const Subject(name: 'Friend', icon: ImageRes.icSubjectFriend),
  'public': const Subject(name: 'Public', icon: ImageRes.icSubjectPublic),
};

class Subject {
  final String name;
  final String icon;
  const Subject({required this.name, required this.icon});
}

class Tagger {
  final String tagId;
  final String tagName;
  const Tagger(this.tagId, this.tagName);
}

class ReactionInfor {
  final String userId;
  final String name;
  final ReactionType type;

  const ReactionInfor(this.userId, this.name, this.type);
}

enum ReactionType {
  like,
  love,
  haha,
  wow,
  sad,
  angry,
}
