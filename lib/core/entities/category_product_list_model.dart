import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String? proCategory;
  final String? proId;
  final String? proName;
  final double? proPrice;
  final int? proDisc;
  final bool? isDicount;
  final int? proRate;
  final int? daysToDelivery;
  final String? proImage;
  final String? proImagePath;

  const ProductModel({
    this.proCategory,
    this.proId,
    this.proName,
    this.proPrice,
    this.proDisc,
    this.isDicount,
    this.proRate,
    this.daysToDelivery,
    this.proImage,
    this.proImagePath,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      proCategory: json['proCategory'] as String?,
      proId: json['proId'] as String?,
      proName: json['proName'] as String?,
      proPrice: (json['proPrice'] as num?)?.toDouble(),
      proDisc: json['proDisc'] as int?,
      isDicount: json['IsDicount'] as bool?,
      proRate: json['proRate'] as int?,
      daysToDelivery: json['daysToDelivery'] as int?,
      proImage: json['proImage'] as String?,
      proImagePath: json['proImagePath'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'proCategory': proCategory,
        'proId': proId,
        'proName': proName,
        'proPrice': proPrice,
        'proDisc': proDisc,
        'IsDicount': isDicount,
        'proRate': proRate,
        'daysToDelivery': daysToDelivery,
        'proImage': proImage,
        'proImagePath': proImagePath,
      };

  @override
  List<Object?> get props {
    return [
      proCategory,
      proId,
      proName,
      proPrice,
      proDisc,
      isDicount,
      proRate,
      daysToDelivery,
      proImage,
      proImagePath,
    ];
  }
}
