import 'package:business_menagement_app/features/dashboard/presentation/widgets/dashboard_appbar.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/daily_summary_section.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            DashboardAppBar(),
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: DailySummarySection(),
            ),
          ],
        ),
      ),
    );
  }
}
