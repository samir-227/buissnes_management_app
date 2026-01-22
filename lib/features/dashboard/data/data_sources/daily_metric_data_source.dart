import 'package:business_menagement_app/features/dashboard/data/models/daily_metrics_model.dart';
import 'package:business_menagement_app/features/dashboard/domain/entities/daily_summary_entity.dart';

abstract class DailyMetricsDataSource {
  Future<List<DailyMetricModel>> getDailyMetrics();
}

class DailyMetricsDataSourceImpl extends DailyMetricsDataSource {
  @override
  Future<List<DailyMetricModel>> getDailyMetrics() async {
    await Future.delayed(const Duration(milliseconds: 500));
     return const [
      DailyMetricModel(
        type: DailyMetricType.totalOrders,
        title: 'إجمالي الطلبات',
        value: '24',
        changeValue: 6,
        isIncrease: true,
      ),
      DailyMetricModel(
        type: DailyMetricType.pendingOrders,
        title: 'طلبات معلقة',
        value: '5',
        changeValue: 2,
        isIncrease: false,
      ),
      DailyMetricModel(
        type: DailyMetricType.revenue,
        title: 'الإيرادات',
        value: '3450 ر.س',
        changeValue: 560,
        isIncrease: true,
      ),
    ];
  }
}
