import 'package:business_menagement_app/features/dashboard/presentation/cubits/daily_metric_cubit/daily_metric_cubit.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/daily_metric_cubit/daily_metric_states.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/summary_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class DailySummarySection extends StatelessWidget {
  const DailySummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'مقاييس اليوم',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),

        BlocBuilder<DailyMetricsCubit, DailyMetricsState>(
          builder: (context, state) {
            if (state is DailyMetricsLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is DailyMetricsLoaded) {
              return Column(
                children: state.metrics
                    .map(
                      (metric) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: DailySummaryCard(metric: metric),
                      ),
                    )
                    .toList(),
              );
            }

            if (state is DailyMetricsError) {
              return Text(state.message);
            }

            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
