import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final String? order;

  const Order({this.order});

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        order: json['order'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'order': order,
      };

  @override
  List<Object?> get props => [order];
}
