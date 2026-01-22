import 'package:business_menagement_app/features/dashboard/domain/repos/daily_metric_repo.dart';
import 'package:business_menagement_app/features/dashboard/presentation/cubits/daily_metric_cubit/daily_metric_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DailyMetricsCubit extends Cubit<DailyMetricsState> {
  final DailyMetricsRepo repository;

  DailyMetricsCubit(this.repository) : super(DailyMetricsInitial());

  Future<void> loadMetrics() async {
    emit(DailyMetricsLoading());
    try {
      final data = await repository.getDailyMetrics();
      emit(DailyMetricsLoaded(data));
    } catch (e) {
      emit(DailyMetricsError(e.toString()));
    }
  }
}