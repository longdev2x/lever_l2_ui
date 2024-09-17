import 'package:flutter/material.dart';
import 'package:lever_l2/features/notification/view/widgets/list_notification_widget.dart';
import 'package:lever_l2/features/notification/view/widgets/notification_top_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        NotificationTopWidget(),
        ListNotificationWidget(),
      ],),
    );
  }
}