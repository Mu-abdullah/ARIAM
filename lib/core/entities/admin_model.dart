import 'package:equatable/equatable.dart';

import 'categories_model.dart';

class AdminModel extends Equatable {
  final String? adminName;
  final String? brandID;
  final String? brandName;
  final String? brandPhone;
  final String? brandImg;
  final String? handcraftType;
  final List<CategoriesModel>? categoriesList;

  const AdminModel({
    this.adminName,
    this.brandID,
    this.brandName,
    this.brandPhone,
    this.brandImg,
    this.handcraftType,
    this.categoriesList,
  });

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      adminName: json['adminName'] as String?,
      brandID: json['adminId'] as String?,
      brandName: json['storeName'] as String?,
      brandPhone: json['storePhone'] as String?,
      brandImg: json['storeImg'] as String?,
      handcraftType: json['handcraftType'] as String?,
      categoriesList: (json['categoriesModel'] as List<dynamic>?)
          ?.map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'adminName': adminName,
        'adminId': brandID,
        'storeName': brandName,
        'storePhone': brandPhone,
        'storeImg': brandImg,
        'handcraftType': handcraftType,
        'categoriesModel': categoriesList?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      adminName,
      brandID,
      brandName,
      brandPhone,
      brandImg,
      handcraftType,
      categoriesList,
    ];
  }
}
