import 'package:business_menagement_app/features/dashboard/domain/entities/quick_action_entity.dart';
import 'package:business_menagement_app/features/dashboard/presentation/widgets/quick_action_card.dart';
import 'package:flutter/material.dart';

class QuickActionsSection extends StatelessWidget {
  QuickActionsSection({super.key});
  final actions = [
    QuickActionEntity(
      title: 'طلب جديد',
      icon: Icons.shopping_cart_outlined,
      iconColor: Colors.blue,
      iconBgColor: Colors.blue.shade50,
      onTap: () {},
    ),
    QuickActionEntity(
      title: 'إضافة منتج',
      icon: Icons.add_box_outlined,
      iconColor: Colors.green,
      iconBgColor: Colors.green.shade50,
      onTap: () {},
    ),
    QuickActionEntity(
      title: 'مخزون منخفض',
      icon: Icons.inventory_2_outlined,
      iconColor: Colors.orange,
      iconBgColor: Colors.orange.shade50,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 16),
        Text('إجراءات سريعة', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: actions.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return QuickActionCard(action: actions[index]);
          },
        ),
      ],
    );
  }
}
