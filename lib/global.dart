import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lever_l2/common/services/shared_preferences_helper.dart';
import 'package:lever_l2/firebase_options.dart';

class Global {
  static late final SharedPreferencesHelper storageService;
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    storageService = await SharedPreferencesHelper().init();
  }
}