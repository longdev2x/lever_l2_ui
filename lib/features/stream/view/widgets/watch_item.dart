import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/model/post_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class WatchItem extends StatelessWidget {
  final PostEntity objPost;
  const 
  WatchItem({super.key, required this.objPost});

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
          AppImageAsset(
            objPost.thumbnail ?? ImageRes.imgBanner1,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 15.h),
          Padding(
            padding: EdgeInsets.only(left: 27.w),
            child: _reactButton(
                onLikeTap: () {
                  AppToast.showToast('Tappp');
                }, onCommentTap: () {
                  AppToast.showToast('Tappp');
                }, onMessTap: () {
                  AppToast.showToast('Tappp');
                }),
          ),
          SizedBox(width: 14.w),
          Padding(
            padding: EdgeInsets.only(
                left: 20.w, top: 14.h, bottom: 20.h, right: 20.w),
            child: _reactInfor(
                onLikeTap: () {
                  AppToast.showToast('Tappp');
                },
                onCommentTap: () {
                  AppToast.showToast('Tappp');
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
          SizedBox(width: 60.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  AppText16('$authorName . ', fontWeight: FontWeight.w600,),
                  const AppText16('Follow', fontWeight: FontWeight.w600, color: Color(0xFF384CFF),),
                ],
              ),
              SizedBox(height: 5.h),
              AppText11('${date.hour} h .'),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Row(
              children: [
                AppImageAsset(
                  onTap: () {
                    AppToast.showToast('Tappp');
                  },
                  ImageRes.icThreeDotHori3,
                  height: 4,
                  width: 18,
                ),
                SizedBox(width: 14.w),
                AppImageAsset(
                  onTap: () {
                    AppToast.showToast('Tappp');
                  },
                  ImageRes.icClose2,
                  height: 9,
                  width: 9,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
