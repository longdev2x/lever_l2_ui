import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/components/app_image_asset.dart';
import 'package:lever_l2/common/components/app_text.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/common/utils/image_res.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.of(context).pushNamedAndRemoveUntil(AppRoutesNames.profileLogin, (route) => false); 
    },);
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Stack(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppImageAsset(
                    ImageRes.imgLogo,
                    width: 100,
                    height: 130,
                  ),
                  AppGradientText('facebook'),
                ],
              ),
              Positioned(
                bottom: 35.h,
                child: Column(
                  children: [
                    const AppText14('From', fontWeight: FontWeight.w400, color: Color(0xFFAAAAAA),),
                    SizedBox(height: 10.h),
                    const AppImageAsset(
                      ImageRes.imgLogoMeta,
                      width: 102,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
