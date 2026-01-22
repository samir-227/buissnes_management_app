enum DailyMetricType {
  totalOrders,
  pendingOrders,
  revenue,
}

class DailyMetricEntity {
  final DailyMetricType type;
  final String title;
  final String value;

  /// change vs yesterday
  final double changeValue;
  final bool isIncrease;

  const DailyMetricEntity({
    required this.type,
    required this.title,
    required this.value,
    required this.changeValue,
    required this.isIncrease,
  });
}
