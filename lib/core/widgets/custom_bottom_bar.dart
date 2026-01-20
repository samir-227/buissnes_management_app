import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          
          icon: Icon(Icons.dashboard_outlined),
          activeIcon: Icon(Icons.dashboard),
          label: 'لوحة التحكم',
          tooltip: 'لوحة التحكم',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.production_quantity_limits_outlined),
          label: 'المنتجات',
          activeIcon: Icon(Icons.production_quantity_limits),
          tooltip: 'المنتجات',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business_center_outlined),
          label: 'العملاء',
          activeIcon: Icon(Icons.business_center),
          tooltip: 'العملاء',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'الإعدادات',
          activeIcon: Icon(Icons.settings),
          tooltip: 'الإعدادات',
        ),
        BottomNavigationBarItem(
          label: 'الطلبات',
          icon: Icon(Icons.receipt_long_outlined),
          activeIcon: Icon(Icons.receipt_long),
          tooltip: 'الطلبات',
        ),
       
      ],
    );
  }
}
