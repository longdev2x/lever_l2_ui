import 'package:flutter/material.dart';
import 'package:lever_l2/common/components/app_text.dart';

class PersonalProfileInfor extends StatelessWidget {
  const PersonalProfileInfor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      _item(name: 'Posts', count: 1234),
      _item(name: 'Friends', count: 1234),
      _item(name: 'Followers', count: 1234),
      _item(name: 'Following', count: 1234),
    ],);
  }

  Widget _item({required String name, required int count}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      AppGradientText(name, fontSize: 18, fontWeight: FontWeight.w600),
      AppGradientText(count.toString(), fontSize: 15, fontWeight: FontWeight.w500),
    ],);
  }
}