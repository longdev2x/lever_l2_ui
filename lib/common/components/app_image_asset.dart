import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class AppImageAsset extends StatelessWidget {
  final String imgPath;
  final Function()? onTap;
  final double? height;
  final double? width;
  final double? radius;
  final Color? color;
  final BoxFit? fit;
  const AppImageAsset(this.imgPath,
      {super.key, this.onTap, this.color, this.height, this.width, this.radius, this.fit = BoxFit.contain});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height?.h,
        width: width?.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 0)),
        child: ClipRRect(borderRadius: BorderRadius.circular(radius ?? 0), child: Image.asset(imgPath, color: color, fit: fit,)),
      ),
    );
  }
}

class AppImageNetwork extends StatelessWidget {
  final String? imgPath;
  final Function()? onTap;
  final double? height;
  final double? width;
  final double? radius;
  const AppImageNetwork(
      {super.key, this.imgPath, this.onTap, this.height = 50, this.width = 50, this.radius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height!.h,
        width: width!.w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: imgPath != null
                    ? NetworkImage(imgPath!)
                    : const AssetImage(ImageRes.imgAvatarDefault)),
            borderRadius: BorderRadius.circular(radius ?? 0)),
      ),
    );
  }
}
