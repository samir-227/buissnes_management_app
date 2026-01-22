import 'package:business_menagement_app/features/dashboard/presentation/cubits/recent_activity_cubit/recent_activity_cubit.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/recent_activity_cubit/recent_activity_states.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/activity_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentActivityCubit, RecentActivityState>(
      builder: (context, state) {
        if (state is RecentActivityLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is RecentActivityLoadedState) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 12),
              Text(
                'النشاط الأخير',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              ...state.recentActivities.map(
                (activity) => ActivityCard(activity: activity),
              ),
            ],
          );
        }
        if (state is RecentActivityErrorState) {
          return const Text('حدث خطأ أثناء تحميل النشاطات');
        }

        return const SizedBox.shrink();
      },
    );
  }
}
