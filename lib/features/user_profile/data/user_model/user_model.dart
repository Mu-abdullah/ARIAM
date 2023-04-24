import 'package:equatable/equatable.dart';

import 'order.dart';
import 'user_adress.dart';

class UserModel extends Equatable {
  final String? userName;
  final String? userMail;
  final String? userPhone;
  final List<UserAdress>? userAdress;
  final List<Order>? orders;

  const UserModel({
    this.userName,
    this.userMail,
    this.userPhone,
    this.userAdress,
    this.orders,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json['userName'] as String?,
        userMail: json['userMail'] as String?,
        userPhone: json['userPhone'] as String?,
        userAdress: (json['userAdress'] as List<dynamic>?)
            ?.map((e) => UserAdress.fromJson(e as Map<String, dynamic>))
            .toList(),
        orders: (json['orders'] as List<dynamic>?)
            ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'userName': userName,
        'userPhone': userPhone,
        'userMail': userMail,
        'userAdress': userAdress?.map((e) => e.toJson()).toList(),
        'orders': orders?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props =>
      [userName, userPhone, userMail, userAdress, orders];
}
