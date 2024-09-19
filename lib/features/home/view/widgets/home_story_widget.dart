import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/model/story_entity.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

final List<StoryEntity> storys = [
  StoryEntity(userId: 'test', userName: 'Long', avatar: ImageRes.imgAvatar1, thumbnail: ImageRes.imgStory2, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
  StoryEntity(userId: 'test', userName: 'Phuơng', avatar: ImageRes.imgAvatar2, thumbnail: ImageRes.imgStory3, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
  StoryEntity(userId: 'test', userName: 'Ngô Kinh', avatar: ImageRes.imgAvatar3, thumbnail: ImageRes.imgStory4, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
  StoryEntity(userId: 'test', userName: 'Wukong', avatar: ImageRes.imgAvatar1, thumbnail: ImageRes.imgStory2, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
  StoryEntity(userId: 'test', userName: 'Long', avatar: ImageRes.imgAvatar2, thumbnail: ImageRes.imgStory3, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
  StoryEntity(userId: 'test', userName: 'Long', avatar: ImageRes.imgAvatar1, thumbnail: ImageRes.imgStory1, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
  StoryEntity(userId: 'test', userName: 'Long', avatar: ImageRes.imgAvatar3, thumbnail: ImageRes.imgStory2, music: 'Lạc trôi', date: DateTime.now().subtract(const Duration(hours: 5))),
];

class HomeStoryWidget extends StatelessWidget {
  const HomeStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 159.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storys.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _storyItem(
              id: 'sdf',
                onTap: () {
                  AppToast.showToast('Tappp');
                },
                name: '',
                thumbnail: ImageRes.imgStory1,
                avatar: ImageRes.icAddStory);
          } else {
            StoryEntity objStory = storys[index -1];
            return _storyItem(
              id: objStory.id,
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutesNames.storyDetail, arguments: objStory);
                },
                name: objStory.userName,
                thumbnail: objStory.thumbnail,
                avatar: objStory.avatar);
          }
        },
      ),
    );
  }

  Widget _storyItem(
      {
        required String id,
        required Function() onTap,
      required String name,
      required String? thumbnail,
      required String? avatar}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 5.w),
        child: SizedBox(
          height: 159.h,
          width: 90.w,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Hero(
                    tag: id,
                    child: Container(
                      height: 130.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: thumbnail != null
                            ? DecorationImage(
                                image: AssetImage(thumbnail), fit: BoxFit.cover)
                            : const AssetImage(ImageRes.imgAvatarDefault)
                                as DecorationImage,
                      ),
                    ),
                  )),
              Positioned(
                left: 0,
                right: 0,
                top: 118.h,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 25.w,
                      height: 25.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: thumbnail != null
                            ? DecorationImage(
                                image: AssetImage(
                                    avatar ?? ImageRes.imgAvatarDefault))
                            : const AssetImage(ImageRes.imgAvatarDefault)
                                as DecorationImage,
                      ),
                    ),
                    AppText10(
                      name,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
