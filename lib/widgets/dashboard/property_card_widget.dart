import 'package:flutter/material.dart';
import 'package:rent_house/constrains/constrain_app_color.dart';

class PropertyCardWidget extends StatelessWidget {
  final String title;
  final String value;
  final String? rate;
  final IconData icon;
  final Gradient gradient;
  final Color? backgroundColor;
  final Color? colorBorder;

  const PropertyCardWidget({
    super.key,
    required this.title,
    required this.value,
    this.rate,
    required this.icon,
    required this.gradient,
    this.backgroundColor,
    this.colorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor?.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          width: 0.5,
          color: colorBorder ?? Colors.transparent,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkCard,
                  ),
                ),
              ),
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: gradient,
                ),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
            ],
          ),
          const Spacer(),
          Text(
            value,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.foreground,
            ),
          ),
          if (rate != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                rate!,
                style: TextStyle(fontSize: 11, color: AppColors.sidebarPrimary),
              ),
            ),
        ],
      ),
    );
  }
}
