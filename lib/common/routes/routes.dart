import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/features/application/view/application_screen.dart';
import 'package:lever_l2/features/auth/profile/view/forgot_mail_screen.dart';
import 'package:lever_l2/features/auth/profile/view/forgot_phone_screen.dart';
import 'package:lever_l2/features/auth/profile/view/new_password_screen.dart';
import 'package:lever_l2/features/auth/profile/view/otp_screen.dart';
import 'package:lever_l2/features/auth/signIn/view/login_screen.dart';
import 'package:lever_l2/features/auth/signIn/view/profile_login_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/gender_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/join_facebook_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/password_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/phone_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/term_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/what_your_name_screen.dart';
import 'package:lever_l2/features/auth/signUp/view/your_birth_day_screen.dart';
import 'package:lever_l2/features/home/view/story_detail_screen.dart';
import 'package:lever_l2/features/message/view/chat_infor_screen.dart';
import 'package:lever_l2/features/message/view/chat_screen.dart';
import 'package:lever_l2/features/message/view/message_screen.dart';
import 'package:lever_l2/features/message/view/new_mess_screen.dart';
import 'package:lever_l2/features/splash/splash_screen.dart';
import 'package:lever_l2/global.dart';

class AppRoutes {
  static List<RouteEntity> routes() {
    return [
      const RouteEntity(
        path: AppRoutesNames.splash,
        page: SplashScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.profileLogin,
        page: ProfileLoginScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.joinFacebook,
        page: JoinFacebookScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.whatYourNameScreen,
        page: WhatYourNameScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.birthday,
        page: YourBirthDayScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.gender,
        page: GenderScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.phone,
        page: PhoneScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.password,
        page: PasswordScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.term,
        page: TermScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.application,
        page: ApplicationScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.login,
        page: LoginScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.forgotPhone,
        page: ForgotPhoneScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.forgotMail,
        page: ForgotMailScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.otpCode,
        page: OtpScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.newCreatePass,
        page: NewPasswordScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.storyDetail,
        page: StoryDetailScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.message,
        page: MessageScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.newMess,
        page: NewMessScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.chat,
        page: ChatScreen(),
      ),
      const RouteEntity(
        path: AppRoutesNames.chatInfor,
        page: ChatInforScreen(),
      ),
    ];
  }

  static MaterialPageRoute generateRoutSettings(RouteSettings settings) {
    var result =
        routes().where((element) => element.path == settings.name).toList();

    bool deviceFirstTime = Global.storageService.getDeviceFirstOpen();
    bool isLoggedIn = FirebaseAuth.instance.currentUser != null;

    if (result[0].path == AppRoutesNames.splash) {
      if (deviceFirstTime) {
        return MaterialPageRoute(builder: (ctx) => const SplashScreen());
      }
      if (isLoggedIn) {
        return MaterialPageRoute(
          builder: (ctx) => const ApplicationScreen(),
          settings: settings,
        );
      }
      return MaterialPageRoute(
        builder: (ctx) => const ProfileLoginScreen(),
        settings: settings,
      );
    } else {
      return MaterialPageRoute(
        builder: (ctx) => result[0].page,
        settings: settings,
      );
    }
  }
}

class RouteEntity {
  const RouteEntity({
    required this.path,
    required this.page,
  });
  final String path;
  final Widget page;
}
