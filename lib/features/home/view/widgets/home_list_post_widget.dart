import 'package:flutter/material.dart';
import 'package:lever_l2/common/model/post_entity.dart';
import 'package:lever_l2/features/home/view/widgets/post_item.dart';

class HomeListPost extends StatelessWidget {
  final List<PostEntity> posts;
  const HomeListPost({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: (ctx, index) {
          return PostItem(
            objPost: posts[index],
          );
        });
  }
}
