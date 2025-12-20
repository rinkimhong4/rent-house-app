import 'package:flutter/cupertino.dart';
import 'package:rent_house/constrains/constrain_app_color.dart';

class Data {
  static List<Map<String, dynamic>> propertyData = [
    {
      'title': 'Total Rooms',
      'value': '6',
      'rate': null,
      'icon': CupertinoIcons.home,
      'gradient': AppGradients.primary,
      'color': AppColors.primary,
    },
    {
      'title': 'Occupancy Rate',
      'value': '50%',
      'rate': '↑ 5% from last month',
      'icon': CupertinoIcons.person_2,
      'gradient': AppGradients.accent1,
      'color': AppColors.success,
    },
    {
      'title': 'Total Revenue',
      'value': '\$615',
      'icon': CupertinoIcons.money_dollar,
      'gradient': AppGradients.accent,
      'color': AppColors.accent,
    },
    {
      'title': 'Pending',
      'value': '1',
      'icon': CupertinoIcons.time,
      'gradient': AppGradients.accent,
      'color': AppColors.accent,
    },
  ];
}
