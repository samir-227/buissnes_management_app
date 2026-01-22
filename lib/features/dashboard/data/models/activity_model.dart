import 'package:business_menagement_app/features/dashboard/domain/entities/recent_activity_entity.dart';

class RecentActivityModel extends RecentActivityEntity {
  RecentActivityModel({
    required super.id,
    required super.createdAt,
    required super.type,
    super.orderNumber,
    super.customerName,
    super.productsCount,
    super.productName,
    super.remainingQuantity,  
  });
  factory RecentActivityModel.fromJson(Map<String, dynamic> json) {
    return RecentActivityModel(
     
      id: json['id'],
      createdAt: json['created_at'],
      type: json['type'],
      orderNumber: json['order_number'],
      customerName: json['customer_name'],
      productsCount: json['products_count'],
      productName: json['product_name'],
    );
  }
}
