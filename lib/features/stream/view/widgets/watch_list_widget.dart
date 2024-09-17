import 'package:flutter/material.dart';
import 'package:lever_l2/common/model/post_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/stream/view/widgets/watch_item.dart';

final List<PostEntity> posts = [
  PostEntity(
      content: 'Test Old is Gold..!! <3',
      type: 'live',
      location: 'Mễ Trì',
      authorAvatar: ImageRes.imgAvatar1,
      subject: subjects['friend']!,
      date: DateTime.now(),
      thumbnail: ImageRes.imgThumbnail,
      images: [],
      authorId: 'TestId',
      authorName: 'Nhật Long',
      taggers: [const Tagger('testId', 'Thu Phương')],
      reactions: [
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.like),
        const ReactionInfor('test', 'Phương', ReactionType.love)
      ],
      commentCounts: 6),
  PostEntity(
      content: 'Test Old is Gold..!! <3',
      type: 'live',
      location: 'Hoàng mai',
      authorAvatar: ImageRes.imgAvatar2,
      subject: subjects['friend']!,
      date: DateTime.now(),
      thumbnail: ImageRes.imgThumbnail,
      images: [],
      authorId: 'TestId',
      authorName: 'Nhật Long',
      taggers: [const Tagger('testId', 'Thu Phương')],
      reactions: [
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.like),
        const ReactionInfor('test', 'Phương', ReactionType.love)
      ],
      commentCounts: 6),
  PostEntity(
      content: 'Test Old is Gold..!! <3',
      type: 'live',
      location: 'Thái Nguyên',
      authorAvatar: ImageRes.imgAvatar3,
      subject: subjects['friend']!,
      date: DateTime.now(),
      thumbnail: ImageRes.imgThumbnail,
      images: [],
      authorId: 'TestId',
      authorName: 'Nhật Long',
      taggers: [const Tagger('testId', 'Thu Phương')],
      reactions: [
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.like),
        const ReactionInfor('test', 'Phương', ReactionType.love)
      ],
      commentCounts: 6),
  PostEntity(
      content: 'Test Old is Gold..!! <3',
      type: 'live',
      location: 'Thanh Trì',
      authorAvatar: ImageRes.imgAvatar1,
      subject: subjects['friend']!,
      date: DateTime.now(),
      thumbnail: ImageRes.imgThumbnail,
      images: [],
      authorId: 'TestId',
      authorName: 'Nhật Long',
      taggers: [const Tagger('testId', 'Thu Phương')],
      reactions: [
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.like),
        const ReactionInfor('test', 'Phương', ReactionType.love)
      ],
      commentCounts: 6),
  PostEntity(
      content: 'Test Old is Gold..!! <3',
      type: 'live',
      location: 'Thanh Xuân',
      authorAvatar: ImageRes.imgAvatar1,
      subject: subjects['friend']!,
      date: DateTime.now(),
      thumbnail: ImageRes.imgThumbnail,
      images: [],
      authorId: 'TestId',
      authorName: 'Nhật Long',
      taggers: [const Tagger('testId', 'Thu Phương')],
      reactions: [
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.like),
        const ReactionInfor('test', 'Phương', ReactionType.love)
      ],
      commentCounts: 6),
  PostEntity(
      content: 'Test Old is Gold..!! <3',
      type: 'live',
      location: 'Đồng Me',
      authorAvatar: ImageRes.imgAvatar1,
      subject: subjects['friend']!,
      date: DateTime.now(),
      thumbnail: ImageRes.imgThumbnail,
      images: [],
      authorId: 'TestId',
      authorName: 'Nhật Long',
      taggers: [const Tagger('testId', 'Thu Phương')],
      reactions: [
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.haha),
        const ReactionInfor('test', 'Phương', ReactionType.like),
        const ReactionInfor('test', 'Phương', ReactionType.love)
      ],
      commentCounts: 6),
];

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        return WatchItem(objPost: posts[index]);
      },
    );
  }
}
