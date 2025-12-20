import 'package:flutter/material.dart';
import 'package:rent_house/widgets/bottom_navigation_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rent House',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const BottomNavigationWidget(),
    );
  }
}
