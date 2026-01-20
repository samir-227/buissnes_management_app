import 'package:business_menagement_app/core/theme/app_theme.dart';
import 'package:business_menagement_app/core/widgets/custom_bottom_bar.dart';
import 'package:business_menagement_app/features/customer/presentation/customers.dart';
import 'package:business_menagement_app/features/dashboard/presentation/dashboard_view.dart';
import 'package:business_menagement_app/features/orders/presentation/orders_view.dart';
import 'package:business_menagement_app/features/product/presentation/products_view.dart';
import 'package:business_menagement_app/features/settings/presentation/settings.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;
  final List<Widget> pages = const [
    DashboardView(),
    ProductsView(),
    OrdersView(),
    CustomersView(),
    SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashColor: AppTheme.primaryDark.withOpacity(0.05),
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: CustomBottomBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
