import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/model/post_entity.dart';
import 'package:lever_l2/common/model/user_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/home/view/widgets/home_list_post_widget.dart';
import 'package:lever_l2/features/personal_profile/view/widgets/personal_profile_action.dart';
import 'package:lever_l2/features/personal_profile/view/widgets/personal_profile_infor.dart';
import 'package:lever_l2/features/personal_profile/view/widgets/personal_profile_lock.dart';
import 'package:lever_l2/features/personal_profile/view/widgets/personal_profile_more_infor.dart';
import 'package:lever_l2/features/personal_profile/view/widgets/personal_profile_post_infor.dart';
import 'package:lever_l2/features/personal_profile/view/widgets/personal_profile_top_widget.dart';

final UserEntity objUser = UserEntity(
    name: 'Nhật Long',
    avatar: ImageRes.imgAvatarDefault,
    cover: ImageRes.imgCoverDefault,
    birthday: DateTime.now().subtract(const Duration(days: 7565)),
    email: 'long@gmail.com',
    gender: 'boy',
    phone: '09232234243');

final List<PostEntity> posts = [
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Mễ Trì', authorAvatar: ImageRes.imgAvatarDefault,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Hoàng mai', authorAvatar: ImageRes.imgAvatarDefault,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Thái Nguyên', authorAvatar: ImageRes.imgAvatarDefault,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Thanh Trì', authorAvatar: ImageRes.imgAvatarDefault,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Thanh Xuân', authorAvatar: ImageRes.imgAvatarDefault,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
  PostEntity(content: 'Test Old is Gold..!! <3', type: 'post_normal',location: 'Đồng Me', authorAvatar: ImageRes.imgAvatarDefault,subject: subjects['friend']!, date: DateTime.now(), images: [ImageRes.imgPost1], authorId: 'TestId', authorName: 'Nhật Long', taggers: [const Tagger('testId', 'Thu Phương')], reactions: [const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.haha), const ReactionInfor('test', 'Phương', ReactionType.like), const ReactionInfor('test', 'Phương', ReactionType.love)], commentCounts: 6),
]; 

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PersonalProfileTopWidget(
            objUser: objUser,
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                PersonalProfileAction(
                  onAddStoryTap: () {},
                  onEditTap: () {},
                  onMoreTap: () {},
                ),
                SizedBox(height: 20.h),
                PersonalProfileLock(
                  onMoreTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          const AppDivider(),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: const Column(
              children: [
                PersonalProfileInfor(),
              ],
            ),
          ),
          SizedBox(height: 15.h),
          const AppDivider(),
          SizedBox(height: 20.h),
          const PersonalProfileMoreInfor(),
          SizedBox(height: 15.h),
          const AppDivider(),
          const PersonalProfilePostInfor(),
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
