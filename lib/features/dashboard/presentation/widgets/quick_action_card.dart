import 'package:business_menagement_app/features/dashboard/domain/entities/quick_action_entity.dart';
import 'package:flutter/material.dart';

class QuickActionCard extends StatelessWidget {
  const QuickActionCard({super.key, required this.action});
  final QuickActionEntity action;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: action.onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: action.iconBgColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(action.icon, color: action.iconColor, size: 24),
            ),
            const SizedBox(height: 8),
            Text(
              action.title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
