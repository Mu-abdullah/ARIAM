import 'package:equatable/equatable.dart';

class UserAdress extends Equatable {
  final String? addres;

  const UserAdress({this.addres});

  factory UserAdress.fromJson(Map<String, dynamic> json) => UserAdress(
        addres: json['addres'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'addres': addres,
      };

  @override
  List<Object?> get props => [addres];
}
