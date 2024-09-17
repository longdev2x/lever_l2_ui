import 'package:flutter/material.dart';
import 'package:lever_l2/features/friend/view/friend_screen.dart';
import 'package:lever_l2/features/home/view/home_screen.dart';
import 'package:lever_l2/features/menu/view/menu_screen.dart';
import 'package:lever_l2/features/notification/view/notification_screen.dart';
import 'package:lever_l2/features/personal_profile/view/personal_profile_screen.dart';
import 'package:lever_l2/features/stream/view/watch_screen.dart';

final List<Widget> screens = [
  const HomeScreen(),
  const FriendScreen(),
  const PersonalProfileScreen(),
  const WatchScreen(),
  const NotificationScreen(),
  const MenuScreen(),
];