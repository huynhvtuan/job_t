import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:job_t/core/config/resources/assets.gen.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ZoomDrawer.of(context)?.toggle();
      },
      child: SvgPicture.asset(
        Assets.icons.menu,
        width: 20.w,
        height: 20.h,
      ),
    );
  }
}
