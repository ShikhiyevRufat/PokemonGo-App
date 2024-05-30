import 'package:flutter/material.dart';
import 'package:animated_emoji/animated_emoji.dart';
import 'package:flutter_application_1/constants/constants_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Text.rich(
        TextSpan(
          text: Constants.appTitle,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.w),
          children: [
            WidgetSpan(
              child: AnimatedEmoji(
                AnimatedEmojis.dinosaur,
                size: 30.w,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
