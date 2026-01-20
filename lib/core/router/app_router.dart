import 'package:business_menagement_app/core/router/router_names.dart';
import 'package:business_menagement_app/features/customer/presentation/customers.dart';
import 'package:business_menagement_app/features/dashboard/presentation/dashboard_view.dart';
import 'package:business_menagement_app/features/main_layout/presentation/main_layout.dart';
import 'package:business_menagement_app/features/orders/presentation/orders_view.dart';
import 'package:business_menagement_app/features/product/presentation/products_view.dart';
import 'package:business_menagement_app/features/settings/presentation/settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.mainLayout,
    routes: [
      GoRoute(
        name: AppRoutes.mainLayout,
        path: AppRoutes.mainLayout,
        builder: (context, state) => (MainLayout()),
      ),
      GoRoute(
        path: AppRoutes.dashboard,
        name: AppRoutes.dashboard,
        builder: (context, state) => DashboardView(),
      ),
      GoRoute(
        path: AppRoutes.orders,
        name: AppRoutes.orders,
        builder: (context, state) => OrdersView(),
      ),
      GoRoute(
        path: AppRoutes.products,
        name: AppRoutes.products,
        builder: (context, state) => ProductsView(),
      ),
      GoRoute(
        path: AppRoutes.customers,
        name: AppRoutes.customers,
        builder: (context, state) => CustomersView(),
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: AppRoutes.settings,
        builder: (context, state) => SettingsView(),
      ),
    ],
    errorBuilder: (context, state) =>
        const Scaffold(body: Center(child: Text('Error'))),
  );
}
