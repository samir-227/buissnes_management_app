import 'package:business_menagement_app/core/di/service_locator.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/daily_metric_cubit/daily_metric_cubit.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/recent_activity_cubit/recent_activity_cubit.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/daily_summary_section.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/quick_action_section.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/recent_activity_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardHeader(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlocProvider(
                  create: (context) => sl<DailyMetricsCubit>()..loadMetrics(),
                  child: DailySummarySection(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: QuickActionsSection(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: BlocProvider(
                  create: (_) => sl<RecentActivityCubit>()..getRecentActivity(),
                  child: RecentActivitySection(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
