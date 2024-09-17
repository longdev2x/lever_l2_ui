import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/features/message/view/widgets/message_contact_widget.dart';
import 'package:lever_l2/features/message/view/widgets/message_header_widget.dart';
import 'package:lever_l2/features/message/view/widgets/message_list.dart';
import 'package:lever_l2/features/message/view/widgets/message_search_bar_widget.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    const MessageHeaderWidget(),
                    SizedBox(height: 18.h),
                    const MessageSearchBarWidget(),
                    SizedBox(height: 14.h),
                  ],
                ),
              ),
              const MessageContactWidget(),
              const MessageList(),
            ],
          ),
        ),
      ),
    );
  }
}
