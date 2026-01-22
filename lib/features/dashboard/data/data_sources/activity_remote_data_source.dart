import 'package:business_menagement_app/features/dashboard/data/models/activity_model.dart';
import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';

abstract class RecentActivityRemoteDataSource {
  Future<List<RecentActivityModel>> getRecentActivities();
}

class RecentActivityRemoteDataSourceImpl
    implements RecentActivityRemoteDataSource {
  @override
  Future<List<RecentActivityModel>> getRecentActivities() async {
    await Future.delayed(Duration(milliseconds: 800));
    return [
      RecentActivityModel(
        id: '1',
        type: ActivityType.newOrder,
        orderNumber: '1234',
        customerName: 'أحمد محمد',
        productsCount: 3,
        createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
      ),
      RecentActivityModel(
        id: '2',
        type: ActivityType.lowStock,
        productName: 'قميص أزرق',
        remainingQuantity: 2,
        createdAt: DateTime.now().subtract(const Duration(hours: 1)),
      ),
      RecentActivityModel(
        id: '3',
        type: ActivityType.completedOrder,
        orderNumber: '1233',
        customerName: 'فاطمة علي',
        productsCount: 1,
        createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      ),
    ];
  }
}
