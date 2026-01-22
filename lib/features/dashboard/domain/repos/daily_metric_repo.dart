import 'package:business_menagement_app/features/dashboard/domain/entities/daily_summary_entity.dart';

abstract class DailyMetricsRepo {
  Future<List<DailyMetricEntity>> getDailyMetrics();
}
