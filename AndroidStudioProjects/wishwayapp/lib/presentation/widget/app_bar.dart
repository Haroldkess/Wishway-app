import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final Color color;
  const AppHeader({super.key, required this.color});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return PreferredSize(
      preferredSize: Size(width, 27),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            //  top: horizontalPadding ,
            left: 24,
            right: 24,
          ),
          child: Container(
            color: color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                myIcon("assets/icon/icon.svg", 20, 26.82, false),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myIcon(
      String svgPath, double height, double width, bool isNotification) {
    return Stack(
      children: [
        SvgPicture.asset(
          svgPath,
          height: height,
          width: width,
        ),
      ],
    );
  }
}
