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
  final int? number;

  const NavItemEntity(this.title, this.icon, this.iconChose, {this.number});
}

final List<NavItemEntity> navItems = [
  const NavItemEntity(
    'Home',
    ImageRes.icNavHome,
    ImageRes.icNavHomeActive,
  ),
  const NavItemEntity(
      'Friend', ImageRes.icNavFriend, ImageRes.icNavFriendActive),
  const NavItemEntity(
      'Person', ImageRes.icNavPerson, ImageRes.icNavPersonActive),
  const NavItemEntity('Video', ImageRes.icNavVideo, ImageRes.icNavVideoActive,
      number: 9),
  const NavItemEntity('Notification', ImageRes.icNavNotification,
      ImageRes.icNavNotificationActive,
      number: 3),
  const NavItemEntity(
      'Humbeger', ImageRes.icNavHumbeger, ImageRes.icNavHumbegerActive),
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
              return _navItem(
                onTap: () {
                  ref.read(navIndexProvider.notifier).state = index;
                },
                icon: indexChose == index ? navItem.iconChose : navItem.icon,
                isChose: indexChose == index,
                number: navItem.number,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _navItem(
      {required Function() onTap,
      required String icon,
      bool isChose = false,
      int? number}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              AppImageAsset(
                icon,
                color: isChose ? const Color(0xFF384CFF) : null,
                width: 20.w,
                height: 21.w,
              ),
              if (number != null)
                Positioned(
                  top: -3,
                  right: -3,
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFFFF0000),
                    radius: 6.w,
                    child: Center(
                      child: Text(
                        number.toString(),
                        style: TextStyle(
                            fontSize: 7.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 5.67.h),
          if (isChose)
            Container(
              height: 5.68,
              width: 5.67,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF384CFF)),
            ),
        ],
      ),
    );
  }
}
