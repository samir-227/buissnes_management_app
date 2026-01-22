import 'package:business_menagement_app/features/dashboard/data/data_sources/activity_remote_data_source.dart';
import 'package:business_menagement_app/features/dashboard/data/data_sources/daily_metric_data_source.dart';
import 'package:business_menagement_app/features/dashboard/data/repos/daily_metric_repo_impl.dart';
import 'package:business_menagement_app/features/dashboard/data/repos/recent_activity_repo_impl.dart';
import 'package:business_menagement_app/features/dashboard/domain/repos/daily_metric_repo.dart';
import 'package:business_menagement_app/features/dashboard/domain/repos/recent_activity_repo.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/daily_metric_cubit/daily_metric_cubit.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/recent_activity_cubit/recent_activity_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  
  /// Daily Metrics DI
  sl.registerFactory(() => DailyMetricsCubit(sl()));

  sl.registerLazySingleton<DailyMetricsRepo>(
    () => DailyMetricsRepoImpl( dailyMetricDataSource: sl()),
  );

  sl.registerLazySingleton<DailyMetricsDataSource>(
    () => DailyMetricsDataSourceImpl(),
  );

  /// Recent Activity DI
  sl.registerFactory(() => RecentActivityCubit(sl()));

  sl.registerLazySingleton<RecentActivityRepo>(
    () => RecentActivityRepoImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton<RecentActivityRemoteDataSource>(
    () => RecentActivityRemoteDataSourceImpl(),
  );
}
