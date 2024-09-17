import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_divider.dart';
import 'package:lever_l2/common/model/friendship_entity.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/friend/view/widgets/friend_request_tile.dart';
import 'package:lever_l2/features/friend/view/widgets/friend_request_item.dart';
import 'package:lever_l2/features/friend/view/widgets/friend_top_widget.dart';

final List<FriendshipEntity> list = [
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Long Hoàng',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 30))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Thu Phương',
      senderAvatar: ImageRes.imgAvatar2,
      createdAt: DateTime.now().subtract(const Duration(days: 50))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Sơn Tùng',
      senderAvatar: ImageRes.imgAvatar3,
      createdAt: DateTime.now().subtract(const Duration(days: 35))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Jack 97J',
      senderAvatar: ImageRes.imgAvatar3,
      createdAt: DateTime.now().subtract(const Duration(days: 27))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Cao Thái Sơn',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 39))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Tony Stack',
      senderAvatar: ImageRes.imgAvatar2,
      createdAt: DateTime.now().subtract(const Duration(days: 33))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Flutter Noob',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 23))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Long Hoàng',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 122))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Long Hoàng',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 33))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Long Hoàng',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 55))),
  FriendshipEntity(
      userId: 'test',
      friendId: 'test',
      status: 'pending',
      senderUsername: 'Long Hoàng',
      senderAvatar: ImageRes.imgAvatar1,
      createdAt: DateTime.now().subtract(const Duration(days: 65))),
];

class FriendScreen extends StatelessWidget {
  const FriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FriendTopWidget(
            onSearchTap: () {},
            onSuggetTap: () {},
            onYourFriendTap: () {},
          ),
          SizedBox(height: 20.h),
          const AppDivider(),
          FriendRequestTile(
            friendCount: list.length,
            onSeeAllTap: () {},
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                return FriendRequestItem(objFriendShip: list[index]);
              }),
        ],
      ),
    );
  }
}
