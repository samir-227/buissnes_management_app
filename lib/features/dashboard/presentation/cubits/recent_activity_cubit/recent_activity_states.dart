import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';

sealed class RecentActivityState { 
}
class RecentActivityInitialState extends RecentActivityState {}
class RecentActivityLoadingState extends RecentActivityState {}
class RecentActivityLoadedState extends RecentActivityState {
  final List<RecentActivityEntity> recentActivities;

  RecentActivityLoadedState(this.recentActivities);
}
class RecentActivityErrorState extends RecentActivityState {
  final String message;

  RecentActivityErrorState(this.message);
}