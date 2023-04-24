import 'package:equatable/equatable.dart';

import 'category_product_list_model.dart';

class CategoriesModel extends Equatable {
  final String? adminId;
  final String? catId;
  final String? catName;
  final String? catImg;
  final List<ProductModel>? productModel;

  const CategoriesModel({
    this.adminId,
    this.catId,
    this.catName,
    this.catImg,
    this.productModel,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    return CategoriesModel(
      adminId: json['adminId'] as String?,
      catId: json['proId'] as String?,
      catName: json['catName'] as String?,
      catImg: json['catImg'] as String?,
      productModel: (json['categoryProductListModel'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'adminId': adminId,
        'proId': catId,
        'catName': catName,
        'catImg': catImg,
        'categoryProductListModel':
            productModel?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      adminId,
      catId,
      catName,
      catImg,
      productModel,
    ];
  }
}
