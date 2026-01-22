import 'package:business_menagement_app/features/dashboard/domain/entities/daily_summary_entity.dart';
import 'package:flutter/material.dart';

class DailySummaryCard extends StatelessWidget {
  final DailyMetricEntity metric;
  final VoidCallback? onTap;

  const DailySummaryCard({super.key, required this.metric, this.onTap});

  @override
  Widget build(BuildContext context) {
    final config = _MetricUIConfig.fromType(metric.type);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /// icon + menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.more_vert, color: Colors.grey),
                  _IconBox(
                    icon: config.icon,
                    bgColor: config.bgColor,
                    iconColor: config.iconColor,
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Text(
                metric.title,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
              ),

              const SizedBox(height: 8),

              Text(
                metric.value,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              _ChangeIndicator(
                value: metric.changeValue,
                isIncrease: metric.isIncrease,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MetricUIConfig {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;

  _MetricUIConfig({
    required this.icon,
    required this.bgColor,
    required this.iconColor,
  });

  factory _MetricUIConfig.fromType(DailyMetricType type) {
    switch (type) {
      case DailyMetricType.totalOrders:
        return _MetricUIConfig(
          icon: Icons.shopping_cart_outlined,
          bgColor: Colors.blue.shade50,
          iconColor: Colors.blue,
        );

      case DailyMetricType.pendingOrders:
        return _MetricUIConfig(
          icon: Icons.access_time,
          bgColor: Colors.orange.shade50,
          iconColor: Colors.orange,
        );

      case DailyMetricType.revenue:
        return _MetricUIConfig(
          icon: Icons.payments_outlined,
          bgColor: Colors.green.shade50,
          iconColor: Colors.green,
        );
    }
  }
}

class _ChangeIndicator extends StatelessWidget {
  final double value;
  final bool isIncrease;

  const _ChangeIndicator({required this.value, required this.isIncrease});

  @override
  Widget build(BuildContext context) {
    final color = isIncrease ? Colors.green : Colors.red;
    final icon = isIncrease ? Icons.trending_up : Icons.trending_down;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,

      children: [
        Text(
          ' عن الأمس ${value.toStringAsFixed(0)}',
          style: TextStyle(color: color, fontSize: 12),
        ),
        const SizedBox(width: 4),
        Icon(icon, size: 16, color: color),
      ],
    );
  }
}

class _IconBox extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;

  const _IconBox({
    required this.icon,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: iconColor, size: 22),
    );
  }
}
