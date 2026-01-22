import 'package:business_menagement_app/core/helpers/activity_ui_helper.dart';
import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final RecentActivityEntity activity;

  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            /// ICON
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: ActivityUIHelper.iconBg(activity.type),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                ActivityUIHelper.icon(activity.type),
                color: ActivityUIHelper.iconColor(activity.type),
              ),
            ),

            const SizedBox(width: 12),

            /// CONTENT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _title(),
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _subtitle(),
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),

            /// TIME
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_timeAgo(), style: Theme.of(context).textTheme.bodySmall),
                const Icon(Icons.chevron_left),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _title() {
    switch (activity.type) {
      case ActivityType.newOrder:
        return 'طلب جديد #${activity.orderNumber}';
      case ActivityType.completedOrder:
        return 'طلب مكتمل #${activity.orderNumber}';
      case ActivityType.lowStock:
        return 'تنبيه مخزون منخفض';
    }
  }

  String _subtitle() {
    switch (activity.type) {
      case ActivityType.newOrder:
      case ActivityType.completedOrder:
        return '${activity.customerName} - ${activity.productsCount} منتجات';
      case ActivityType.lowStock:
        return '${activity.productName} - متبقي ${activity.remainingQuantity} قطعة';
    }
  }

  String _timeAgo() {
    final diff = DateTime.now().difference(activity.createdAt);
    if (diff.inMinutes < 60) {
      return 'منذ ${diff.inMinutes} دقيقة';
    } else {
      return 'منذ ${diff.inHours} ساعة';
    }
  }
}
