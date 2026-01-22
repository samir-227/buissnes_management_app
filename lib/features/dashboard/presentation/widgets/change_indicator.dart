import 'package:flutter/material.dart';

class ChangeIndicator extends StatelessWidget {
  final double value;
  final bool isIncrease;

  const ChangeIndicator({
    required this.value,
    required this.isIncrease,
  });

  @override
  Widget build(BuildContext context) {
    final color = isIncrease ? Colors.green : Colors.red;
    final icon = isIncrease ? Icons.trending_up : Icons.trending_down;

    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 4),
        Text(
          '${value.toStringAsFixed(0)} عن الأمس',
          style: TextStyle(color: color, fontSize: 12),
        ),
      ],
    );
  }
}
