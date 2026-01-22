import 'package:business_menagement_app/features/dashboard/data/data_sources/daily_metric_data_source.dart';
import 'package:business_menagement_app/features/dashboard/data/models/daily_metrics_model.dart';
import 'package:business_menagement_app/features/dashboard/domain/repos/daily_metric_repo.dart';

class DailyMetricsRepoImpl implements DailyMetricsRepo {
  final DailyMetricsDataSource dailyMetricDataSource;

  DailyMetricsRepoImpl({required this.dailyMetricDataSource});
  @override
  Future<List<DailyMetricModel>> getDailyMetrics() {
    return dailyMetricDataSource.getDailyMetrics();
  }
}
