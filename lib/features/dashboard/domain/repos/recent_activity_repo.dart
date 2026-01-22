import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';

abstract class RecentActivityRepo {
  Future<List<RecentActivityEntity>> getRecentActivities();
}
