import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/model/post_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class PostItem extends StatelessWidget {
  final PostEntity objPost;
  const PostItem({super.key, required this.objPost});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _rowTop(
            authorName: objPost.authorName,
            taggers: objPost.taggers,
            date: objPost.date,
            subject: objPost.subject,
            authorAvatar: objPost.authorAvatar,
            location: objPost.location,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 21.w, right: 21.w, top: 17.h, bottom: 5.h),
            child: AppText12(
              objPost.content,
              maxLines: 3,
            ),
          ),
          Container(
            margin: objPost.type == 'avatar'
                ? EdgeInsets.symmetric(horizontal: 80.w)
                : null,
            clipBehavior: Clip.none,
            padding: objPost.type == 'avatar' ? EdgeInsets.all(5.w) : null,
            decoration: objPost.type == 'avatar'
                ? BoxDecoration(
                    color: const Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(500))
                : null,
            child: AppImageAsset(
              objPost.images[0],
              width: double.infinity,
              fit: BoxFit.fitWidth,
              radius: objPost.type == 'avatar' ? 500 : 0,
            ),
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.only(left: 27.w),
            child: _reactButton(onLikeTap: () {
              AppToast.showToast('Tapppp');
            }, onCommentTap: () {
              AppToast.showToast('Tapppp');
            }, onMessTap: () {
              AppToast.showToast('Tapppp');
            }),
          ),
          SizedBox(width: 14.w),
          Padding(
            padding: EdgeInsets.only(
                left: 20.w, top: 14.h, bottom: 20.h, right: 20.w),
            child: _reactInfor(
                onLikeTap: () {
                  AppToast.showToast('Tapppp');
                },
                onCommentTap: () {
                  AppToast.showToast('Tapppp');
                },
                reactInfors: [
                  const ReactionInfor('test', 'Long', ReactionType.like),
                  const ReactionInfor('test', 'Phương', ReactionType.like),
                  const ReactionInfor('test', 'Phương', ReactionType.love),
                  const ReactionInfor('test', 'Phương', ReactionType.like),
                  const ReactionInfor('test', 'Phương', ReactionType.haha),
                  const ReactionInfor('test', 'Phương', ReactionType.like),
                ],
                commentCounts: 5),
          ),
        ],
      ),
    );
  }

  Widget _reactInfor(
      {required Function() onLikeTap,
      required Function() onCommentTap,
      required List<ReactionInfor> reactInfors,
      required int commentCounts}) {
    return Row(
      children: [
        if (reactInfors.isNotEmpty)
          GestureDetector(
            onTap: onLikeTap,
            child: Row(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: 30.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _reactIcon(ImageRes.icReacLove, [
                            const Color(0xFFFF9F9F),
                            const Color(0xFFFF0606),
                          ]),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      child: _reactIcon(ImageRes.icReacLike, [
                        const Color(0xFF6B79F2),
                        const Color(0xFF0019FE),
                      ]),
                    )
                  ],
                ),
                SizedBox(width: 6.w),
                reactInfors.length > 1
                    ? AppText11(
                        'Like by ${reactInfors[0].name} and ${reactInfors.length - 1} others')
                    : AppText11('Like by ${reactInfors[0].name}'),
              ],
            ),
          ),
        const Spacer(),
        if (commentCounts != 0)
          GestureDetector(
              onTap: onCommentTap, child: AppText11('$commentCounts comment')),
      ],
    );
  }

  Widget _reactIcon(String icon, List<Color> colors) => Container(
        width: 14.w,
        height: 14.w,
        padding: EdgeInsets.all(3.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          gradient: LinearGradient(colors: colors),
        ),
        child: AppImageAsset(
          width: 8.w,
          height: 7.w,
          icon,
          color: Colors.white,
        ),
      );

  Widget _reactButton({
    required Function() onLikeTap,
    required Function() onCommentTap,
    required Function() onMessTap,
  }) {
    return Row(
      children: [
        AppImageAsset(onTap: onLikeTap, ImageRes.icLike, height: 18, width: 21),
        SizedBox(width: 30.w),
        AppImageAsset(
            onTap: onCommentTap, ImageRes.icCmt, height: 18, width: 21),
        SizedBox(width: 30.w),
        AppImageAsset(
            onTap: onMessTap, ImageRes.icMessPost, height: 18, width: 21),
      ],
    );
  }

  Widget _rowTop(
      {required String authorName,
      required List<Tagger> taggers,
      String? authorAvatar,
      required DateTime date,
      String? location,
      required Subject subject}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppImageAsset(
            authorAvatar ?? ImageRes.imgPost1,
            width: 50,
            height: 50,
            radius: 10,
          ),
          SizedBox(width: 16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 200.w,
                child: taggers.isEmpty
                    ? AppText14(authorName)
                    : _richText(
                        authorName: authorName,
                        tagger: taggers[0].tagName,
                        type: objPost.type),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  AppText11('${date.hour} h .'),
                  AppText11('$location .'),
                  AppImageAsset(
                    subject.icon,
                    height: 9,
                    width: 9,
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: AppImageAsset(
              onTap: () {
                AppToast.showToast('Tapppp');
              },
              ImageRes.icThreeDot,
              height: 15,
              width: 3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _richText(
      {required String authorName,
      required String tagger,
      required String type}) {
    String connectText = ' is with ';
    if (type == 'avatar') {
      connectText = ' updated his profile photo ';
    }
    return RichText(
      text: TextSpan(
        text: authorName,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14.sp),
        children: [
          TextSpan(
            text: connectText,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp),
          ),
          if (type != 'avatar')
            TextSpan(
              text: tagger,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp),
            ),
        ],
      ),
    );
  }
}
