import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/model/post_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/home/view/widgets/home_list_post_widget.dart';
import 'package:lever_l2/features/home/view/widgets/home_options_widget.dart';
import 'package:lever_l2/features/home/view/widgets/home_story_widget.dart';
import 'package:lever_l2/features/home/view/widgets/home_top_row_widget.dart';


final List<PostEntity> posts = [
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Mễ Trì', authorAvatar: ImageRes.imgAvatar1,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: '', type: 'avatar',location: 'Hoàng mai', authorAvatar: ImageRes.imgAvatar2,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgChangeAvatar], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: '', type: 'post_normal',location: 'Thái Nguyên', authorAvatar: ImageRes.imgAvatar3,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgBanner2], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Thanh Trì', authorAvatar: ImageRes.imgAvatar1,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Thanh Xuân', authorAvatar: ImageRes.imgAvatar1,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Đồng Me', authorAvatar: ImageRes.imgAvatar1,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
]; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const HomeTopRowWidget(),
                SizedBox(height: 16.h),
                const HomeOptionsWidget(),
                SizedBox(height: 20.h),
                const HomeStoryWidget(),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          const AppDivider(),
          SizedBox(height: 15.h),
          HomeListPost(
            posts: posts,
          ),
        ],
      ),
    );
  }
}
