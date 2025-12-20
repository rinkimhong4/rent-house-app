import 'package:flutter/material.dart';
import 'package:rent_house/constrains/constrain_app_icon.dart';

import '../constrains/constrain_app_color.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryForeground,
      leadingWidth: double.maxFinite,
      leading: Row(
        children: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: AppGradients.primary,
            ),
            child: Center(
              child: Icon(ConstrainAppIcon.appIcon, color: Colors.white),
            ),
          ),
        ],
      ),

      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_sharp),
          onPressed: () {
            // Handle search button press
          },
        ),
        Container(
          margin: const EdgeInsets.only(right: 16),
          width: 33,
          height: 33,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withAlpha(40),
          ),
          child: Center(child: Icon(Icons.person)),
        ),
      ],
    );
  }
}

class AppShadows {
  static const sm = [
    BoxShadow(
      color: Color.fromRGBO(14, 27, 38, 0.05),
      blurRadius: 2,
      offset: Offset(0, 1),
    ),
  ];

  static const md = [
    BoxShadow(
      color: Color.fromRGBO(14, 27, 38, 0.07),
      blurRadius: 6,
      offset: Offset(0, 4),
    ),
    BoxShadow(
      color: Color.fromRGBO(14, 27, 38, 0.05),
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];

  static const lg = [
    BoxShadow(
      color: Color.fromRGBO(14, 27, 38, 0.08),
      blurRadius: 15,
      offset: Offset(0, 10),
    ),
    BoxShadow(
      color: Color.fromRGBO(14, 27, 38, 0.04),
      blurRadius: 6,
      offset: Offset(0, 4),
    ),
  ];

  static const glow = [
    BoxShadow(color: Color.fromRGBO(42, 174, 150, 0.15), blurRadius: 20),
  ];
}
