import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/components/app_toast.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class MenuOptionEntity {
  final String name;
  final String icon;
  const MenuOptionEntity(this.name, this.icon);
}

final List<MenuOptionEntity> options = [
  const MenuOptionEntity('Jobs', ImageRes.icJobs),
  const MenuOptionEntity('COVID-19 information Center', ImageRes.icCovid),
  const MenuOptionEntity('Marketplace', ImageRes.icMarketplace),
  const MenuOptionEntity('Friends', ImageRes.icFriend),
  const MenuOptionEntity('Events', ImageRes.icEvent),
  const MenuOptionEntity('Gaming', ImageRes.icGamming),
  const MenuOptionEntity('Weather', ImageRes.icWeather),
  const MenuOptionEntity('Saved', ImageRes.icSave),
];

class MenuOptionsWidget extends StatelessWidget {
  const MenuOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...options.map((option) =>
            _optionItem(name: option.name, icon: option.icon, onTap: () {
              AppToast.showToast('Tappp');
            })),
        SizedBox(height: 3.h),
        _optionMore(() {
          AppToast.showToast('Tappp');
        }),
        SizedBox(height: 12.h),
      ],
    );
  }

  Widget _optionItem(
      {required String name, required String icon, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.h),
        child: Container(
          padding: EdgeInsets.only(bottom: 8.h, top: 7.73.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: const Color(0xFF384CFF),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppGradientText(name, fontSize: 12),
              SizedBox(width: 10.w),
              AppImageAsset(icon),
            ],
          ),
        ),
      ),
    );
  }

  Widget _optionMore(Function() ontap) => GestureDetector(
        onTap: ontap,
        child: Padding(
          padding: EdgeInsets.only(bottom: 3.h),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: EdgeInsets.only(bottom: 8.h, top: 7.73.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(
                color: const Color(0xFF555555),
                width: 1,
              ),
            ),
            child: const AppText12(
              'See more',
              color: Color(0xFF555555),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
}
