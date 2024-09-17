import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';

class FriendRequestTile extends StatelessWidget {
  final Function() onSeeAllTap;
  final int friendCount;
  const FriendRequestTile(
      {super.key, required this.onSeeAllTap, required this.friendCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 20.h),
      child: Row(
        children: [
          const AppText18(
            'Friend request  ',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          AppText18(
            '$friendCount',
            fontWeight: FontWeight.w600,
            color: Colors.red,
          ),
          const Spacer(),
          GestureDetector(
              onTap: onSeeAllTap,
              child: const AppText18(
                'See All',
                color: Color(0xFF384CFF),
              )),
        ],
      ),
    );
  }
}
