import 'package:business_menagement_app/features/dashboard/presentation/widgets/summary_card.dart';
import 'package:flutter/material.dart';

class DailySummarySection extends StatelessWidget {
  const DailySummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SummaryCard> items = [
      SummaryCard(
        icon: Icons.receipt_long,
        iconColor: Color(0xFF4169E1),
        iconBgColor: Color(0xFFE8EEFF),
        title: '24',
        subtitle: 'إجمالي الطلبات اليوم',
        onTap: () {},
      ),
      SummaryCard(
        icon: Icons.shopping_bag_outlined,
        iconColor: Color(0xFFFF8C00),
        iconBgColor: Color(0xFFFFF4E6),
        title: '8',
        subtitle: 'الطلبات المعلقة',
        onTap: () {},
      ),
      SummaryCard(
        icon: Icons.payments_outlined,
        iconColor: Color(0xFF00C853),
        iconBgColor: Color(0xFFE8F5E9),
        title: 'ر.س 12,450',
        subtitle: 'ايرادات اليوم',
        onTap: () {},
      ),
      SummaryCard(
        icon: Icons.inventory_2_outlined,
        iconColor: Color(0xFFE53935),
        iconBgColor: Color(0xFFFFEBEE),
        title: '5',
        subtitle: 'تنبيهات المخزن منتجات منخفضة',
        onTap: () {},
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ملخص اليوم',
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 12,
            childAspectRatio: 1.13,
          ),
          shrinkWrap: true,
          itemCount: items.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => items[index],
        ),
      ],
    );
  }
}
