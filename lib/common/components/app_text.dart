// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppGradientText extends StatelessWidget {
  final String text;
  final Gradient? gradient;
  final double? fontSize;
  final FontWeight? fontWeight;
  const AppGradientText(
    this.text, {
    super.key,
    this.gradient = const LinearGradient(colors: [
      Color(0xFF384CFF),
      Color(0xFF00A3FF),
    ]),
    this.fontSize = 28,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient!.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text,
          style: TextStyle(fontSize: fontSize!.sp, fontWeight: fontWeight)),
    );
  }
}



class AppText10 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText10(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 10.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class AppText11 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText11(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 11.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class AppText12 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText12(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class AppText14 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText14(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}


class AppText15 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText15(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}


class AppText16 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText16(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class AppText18 extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText18(this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class AppText24  extends StatelessWidget {
  final String? text;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? color;
  const AppText24 (this.text,
      {super.key,
      this.fontWeight,
      this.maxLines = 1,
      this.textAlign,
      this.color});
  @override
  Widget build(context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: 24 .sp,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}