import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/utils/image_res.dart';
import 'package:lever_l2/features/application/controller/nav_index_provider.dart';

class NavItemEntity {
  final String title;
  final String icon;
  final String iconChose;
  const NavItemEntity(this.title, this.icon, this.iconChose);
}

final List<NavItemEntity> navItems = [
  const NavItemEntity('Home', ImageRes.icNavHome, ImageRes.icNavHomeActive),
  const NavItemEntity('Friend', ImageRes.icNavFriend, ImageRes.icNavFriendActive),
  const NavItemEntity('Person', ImageRes.icNavPerson, ImageRes.icNavPersonActive),
  const NavItemEntity('Video', ImageRes.icNavVideo, ImageRes.icNavVideoActive),
  const NavItemEntity('Notification', ImageRes.icNavNotification, ImageRes.icNavNotificationActive),
  const NavItemEntity('Humbeger', ImageRes.icNavHumbeger, ImageRes.icNavHumbegerActive),
];

class NavigationWidget extends ConsumerWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int indexChose = ref.watch(navIndexProvider);
    return SizedBox(
      height: 34.h,
      width: 310.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            navItems.length,
            (index) {
              NavItemEntity navItem = navItems[index];
              return _navItem(onTap: () {
                ref.read(navIndexProvider.notifier).state = index;
              }, icon: indexChose == index ? navItem.iconChose : navItem.icon, isChose: indexChose == index);
            },
          ),
        ],
      ),
    );
  }

  Widget _navItem(
      {required Function() onTap, required String icon, bool isChose = false}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          AppImageAsset(icon,
          color: isChose ? const Color(0xFF384CFF) : null,
              width: 20.w,
              height: 21.w),
          SizedBox(height: 5.67.h),
          Container(
            height: 5.68,
            width: 5.67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
