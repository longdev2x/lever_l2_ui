import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/features/stream/controller/watch_nav_chose_provider.dart';

final List<String> listNavWatch = ['For You', 'Live', 'Music', 'Gaming', 'Follow'];

class WatchNavWidget extends ConsumerWidget {
  const WatchNavWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int indexChose = ref.watch(watchNavChoseProvider);
    return Container(
      height: 35.h,
      width: 350.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(colors: [
          Color(0xE6384CFF),
          Color(0xE600A3FF),
        ]),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Color(0xBF000000)
          ),

        ],
      ),
      child: ListView.builder(
          itemCount: listNavWatch.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return WatchNavItem(
              name: listNavWatch[index],
              isChose: indexChose == index,
              onTap: () {
                ref.read(watchNavChoseProvider.notifier).state = index;
              },
            );
          }),
    );
  }
}

class WatchNavItem extends StatelessWidget {
  final String name;
  final bool isChose;
  final Function() onTap;
  const WatchNavItem({
    super.key,
    required this.name,
    this.isChose = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 38.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
           AppText12(
              name,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            if (isChose)
              SizedBox(
                width: 20.w,
                child: const Divider(
                  height: 1,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
