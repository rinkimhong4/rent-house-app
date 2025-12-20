import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';

import 'package:rent_house/constrains/constrain_app_color.dart';
import 'package:rent_house/view/dashboard_screen.dart';
import 'package:rent_house/view/rooms_screen.dart';
import 'package:rent_house/view/tenant_screen.dart';
import 'package:rent_house/view/payment_screen.dart';

enum _SelectedTab { dashboard, rooms, tenants, payments }

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  _SelectedTab _selectedTab = _SelectedTab.dashboard;

  final Map<_SelectedTab, Widget> _screens = {
    _SelectedTab.dashboard: const DashboardScreen(),
    _SelectedTab.rooms: const RoomsScreen(),
    _SelectedTab.tenants: const TenantScreen(),
    _SelectedTab.payments: const PaymentScreen(),
  };

  void _handleIndexChanged(int index) {
    setState(() {
      _selectedTab = _SelectedTab.values[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: _screens[_selectedTab],

      bottomNavigationBar: CrystalNavigationBar(
        height: 82,
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,

        backgroundColor: Colors.white,
        indicatorColor: AppColors.primary,

        borderRadius: 24,
        borderWidth: 1,
        outlineBorderColor: Colors.grey.shade100,

        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: AppColors.primary,

        enableFloatingNavBar: true,
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeOut,

        splashColor: AppColors.primary,

        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 16,
            offset: const Offset(0, -2),
          ),
        ],

        items: [
          // Dashboard
          CrystalNavigationBarItem(
            icon: CupertinoIcons.house_fill,
            unselectedIcon: CupertinoIcons.house,
            selectedColor: AppColors.primary,
          ),

          // Rooms
          CrystalNavigationBarItem(
            icon: CupertinoIcons.building_2_fill,
            unselectedIcon: CupertinoIcons.building_2_fill,
            selectedColor: AppColors.primary,
          ),

          // Tenants
          CrystalNavigationBarItem(
            icon: CupertinoIcons.person_2_fill,
            unselectedIcon: CupertinoIcons.person_2,
            selectedColor: AppColors.primary,
          ),

          // Payments
          CrystalNavigationBarItem(
            icon: CupertinoIcons.creditcard_fill,
            unselectedIcon: CupertinoIcons.creditcard,
            selectedColor: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
