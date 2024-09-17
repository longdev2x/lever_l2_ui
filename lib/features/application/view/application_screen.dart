import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lever_l2/common/routes/app_routes_names.dart';
import 'package:lever_l2/features/application/controller/nav_index_provider.dart';
import 'package:lever_l2/features/application/view/widgets/navigation_widget.dart';
import 'package:lever_l2/features/application/view/widgets/row_top_widget.dart';
import 'package:lever_l2/features/application/view/widgets/screens.dart';

class ApplicationScreen extends ConsumerWidget {
  const ApplicationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int navIndexChosed = ref.watch(navIndexProvider);

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(280.w, navIndexChosed == 0 ? 120.h : 55.h),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  if(navIndexChosed == 0)
                    RowTopWidget(onFbMessTap: () {
                      Navigator.of(context).pushNamed(AppRoutesNames.message);
                    }),
                  SizedBox(height: 17.h),
                  const NavigationWidget(),
                ],
              ),
            ),
          )),
      body: screens[navIndexChosed],
    );
  }
}
