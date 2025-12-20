import 'package:flutter/material.dart';
import 'package:rent_house/constrains/constrain_app_color.dart';
import 'package:rent_house/core/data/data.dart';
import 'package:rent_house/widgets/app_bar_widget.dart';
import 'package:rent_house/widgets/dashboard/property_card_widget.dart';
import 'package:rent_house/widgets/dashboard/room_status_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryForeground,
      appBar: AppBarWidget(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              _buildWelcomeText(),
              const SizedBox(height: 20),
            ]),
          ),
        ),
        _buildPropertyGrid(),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 20),
              RoomStatusWidget(
                rooms: List.generate(
                  10,
                  (index) => RoomItem(
                    name: 'Room ${index + 100}',
                    price: '\$150/month',
                    status: 'Available',
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }

  Widget _buildWelcomeText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Welcome back 👋',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        Text(
          "Here's what's happening with your properties today.",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildPropertyGrid() {
    final data = Data.propertyData;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 3 / 2,
        ),
        delegate: SliverChildBuilderDelegate((context, index) {
          final item = data[index];
          return PropertyCardWidget(
            title: item['title'],
            value: item['value'],
            rate: item['rate'],
            icon: item['icon'],
            gradient: item['gradient'],
            backgroundColor: item['color'],
            colorBorder: item['color'],
          );
        }, childCount: data.length),
      ),
    );
  }
}
