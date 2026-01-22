import 'package:business_menagement_app/features/dashboard/data/data_sources/activity_remote_data_source.dart';
import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';
import 'package:business_menagement_app/features/dashboard/domain/repos/recent_activity_repo.dart';

class RecentActivityRepoImpl implements RecentActivityRepo {
  final RecentActivityRemoteDataSource remoteDataSource;

  RecentActivityRepoImpl({required this.remoteDataSource});
  @override
  Future<List<RecentActivityEntity>> getRecentActivities() {
    return remoteDataSource.getRecentActivities();
  }
}
