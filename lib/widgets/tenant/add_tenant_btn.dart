import 'package:flutter/material.dart';
import 'package:rent_house/constrains/constrain_app_color.dart';

class AddTenantBtn extends StatelessWidget {
  const AddTenantBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your button action here
        // print('Add Tenant button pressed');
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.maxFinite, 48),
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Icon(Icons.add, color: Colors.white, size: 20),
          SizedBox(width: 8),
          Text('Add Tenant', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
