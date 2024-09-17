import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_text.dart';

class AppElevatedButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width, height, radius, pHori, pVeti;
  const AppElevatedButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width = 300,
    this.height = 40,
    this.radius = 15,
    this.pHori = 12,
    this.pVeti = 8,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: pHori!.w,
          vertical: pVeti!.h,
        ),
        alignment: Alignment.center,
        height: height!.h,
        width: width!.w,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0x801C78FF),
              offset: Offset(0, 4),
              blurRadius: 9,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(radius ?? 0),
          gradient: const LinearGradient(colors: [
            Color(0xFF384CFF),
            Color(0xFF00A3FF),
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        ),
        child: AppText14(
          text,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}

class AppElevatedButtonOnlyBackground extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width, height, radius, pHori, pVeti;
  const AppElevatedButtonOnlyBackground({
    super.key,
    required this.onTap,
    required this.text,
    this.width = 300,
    this.height = 40,
    this.radius = 15,
    this.pHori = 12,
    this.pVeti = 8,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: pHori!.w,
          vertical: pVeti!.h,
        ),
        alignment: Alignment.center,
        height: height!.h,
        width: width!.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: const Color(0xFFEEEEEE)
        ),
        child: AppText14(
          text,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF555555),
        ),
      ),
    );
  }
}


class AppOutlineButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double? width, height, radius;
  const AppOutlineButton({
    super.key,
    required this.onTap,
    required this.text,
    this.width = 300,
    this.height = 40,
    this.radius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height!.h,
        width: width!.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: const Color(0xFF384CFF),
          ),
          borderRadius: BorderRadius.circular(radius ?? 0),
          color: Colors.white
        ),
        child: AppText12(
          text,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }
}
