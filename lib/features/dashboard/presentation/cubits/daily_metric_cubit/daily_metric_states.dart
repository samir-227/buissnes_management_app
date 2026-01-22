import 'package:business_menagement_app/features/dashboard/domain/entities/daily_summary_entity.dart';

sealed class DailyMetricsState {}

class DailyMetricsInitial extends DailyMetricsState {}

class DailyMetricsLoading extends DailyMetricsState {}

class DailyMetricsLoaded extends DailyMetricsState {
  final List<DailyMetricEntity> metrics;

  DailyMetricsLoaded(this.metrics);
}

class DailyMetricsError extends DailyMetricsState {
  final String message;

  DailyMetricsError(this.message);
}
