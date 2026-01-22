import 'package:business_menagement_app/features/dashboard/domain/entities/daily_summary_entity.dart';

class DailyMetricModel extends DailyMetricEntity {
  const DailyMetricModel({
    required super.type,
    required super.title,
    required super.value,
    required super.changeValue,
    required super.isIncrease,
  });

  factory DailyMetricModel.fromJson(Map<String, dynamic> json) {
    return DailyMetricModel(
      type: _mapType(json['type']),
      title: json['title'],
      value: json['value'],
      changeValue: (json['change'] as num).toDouble(),
      isIncrease: json['increase'],
    );
  }

  static DailyMetricType _mapType(String type) {
    switch (type) {
      case 'total_orders':
        return DailyMetricType.totalOrders;
      case 'pending_orders':
        return DailyMetricType.pendingOrders;
      case 'revenue':
        return DailyMetricType.revenue;
      default:
        return DailyMetricType.totalOrders;
    }
  }
}


