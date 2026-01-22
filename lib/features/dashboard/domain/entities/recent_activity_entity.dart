enum ActivityType {
  newOrder,
  completedOrder,
  lowStock,
}

class RecentActivityEntity {
  final String id;
  final ActivityType type;

  // Order related
  final String? orderNumber;
  final String? customerName;
  final int? productsCount;

  // Product related
  final String? productName;
  final int? remainingQuantity;

  final DateTime createdAt;

  RecentActivityEntity({
    required this.id,
    required this.type,
    required this.createdAt,
    this.orderNumber,
    this.customerName,
    this.productsCount,
    this.productName,
    this.remainingQuantity,
  });
}
