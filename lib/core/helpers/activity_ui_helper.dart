import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';
import 'package:flutter/material.dart';

class ActivityUIHelper {
  static IconData icon(ActivityType type) {
    switch (type) {
      case ActivityType.newOrder:
        return Icons.receipt_long;
      case ActivityType.completedOrder:
        return Icons.check_circle;
      case ActivityType.lowStock:
        return Icons.inventory_2;
    }
  }

  static Color iconColor(ActivityType type) {
    switch (type) {
      case ActivityType.newOrder:
        return Colors.green;
      case ActivityType.completedOrder:
        return Colors.green;
      case ActivityType.lowStock:
        return Colors.orange;
    }
  }

  static Color iconBg(ActivityType type) {
    switch (type) {
      case ActivityType.newOrder:
        return const Color(0xFFE8F5E9);
      case ActivityType.completedOrder:
        return const Color(0xFFE8F5E9);
      case ActivityType.lowStock:
        return const Color(0xFFFFF3E0);
    }
  }
}
