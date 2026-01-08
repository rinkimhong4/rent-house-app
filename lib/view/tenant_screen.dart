import 'package:flutter/material.dart';
import 'package:rent_house/constrains/constrain_app_color.dart';
import 'package:rent_house/core/data/data.dart';
import 'package:rent_house/widgets/app_bar_widget.dart';
import 'package:rent_house/widgets/tenant/add_tenant_btn.dart';
import 'package:rent_house/widgets/tenant/tenant_card.dart';

class TenantScreen extends StatelessWidget {
  const TenantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarWidget(),
        body: _buildBody(),
      ),
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
              _buildTenantsText(),
              const SizedBox(height: 20),
              AddTenantBtn(),
            ]),
          ),
        ),
        _buildSearchBar(),

        _buildTenantList(),
      ],
    );
  }

  Widget _buildTenantList() {
    final tenants = Data.tenantData;

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final tenant = tenants[index];
        return TenantCard(tenant: tenant);
      }, childCount: tenants.length),
    );
  }

  Widget _buildTenantsText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Tenants',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        Text(
          "Manage your tenants",
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search tenants...',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: AppColors.primary, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
