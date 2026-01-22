import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';
import 'package:business_menagement_app/features/dashboard/domain/repos/recent_activity_repo.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/recent_activity_cubit/recent_activity_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentActivityCubit extends Cubit<RecentActivityState>{
  RecentActivityCubit(this.repo)
      : super(RecentActivityInitialState());  
  final RecentActivityRepo repo;

  void getRecentActivity() async {
    emit(RecentActivityLoadingState());
    try {
      final List<RecentActivityEntity> recentActivity =
          await repo.getRecentActivities();
      emit(RecentActivityLoadedState(recentActivity));
    } catch (e) {
      emit(RecentActivityErrorState(e.toString()));
    }
  }
}