import 'package:flutter/material.dart';

class QuickActionEntity {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Color iconBgColor;
  final VoidCallback onTap;

  QuickActionEntity({
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.iconBgColor,
    required this.onTap,
  });
}
