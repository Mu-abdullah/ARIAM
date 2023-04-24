import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/entities/admin_model.dart';
import '../../../../core/entities/categories_model.dart';
import '../../../../core/entities/category_product_list_model.dart';

class SendDataToFirebase {
  addDataToFireStore({
    required String adminName,
    required String adminId,
    required String storeName,
    required String storeImg,
    required String categoryId,
    required String categoyName,
    required String categoyimg,
    required String productId,
    required String productName,
    required double productPrice,
    required int productDiscount,
    required bool isDiscount,
    required int daysToDelivery,
    required int proRate,
    required String productImg,
    required String productsimgPath,
  }) {
    final adminModel = AdminModel(
      adminName: adminName,
      brandID: adminId,
      brandName: storeName,
      brandImg: storeImg,
      categoriesList: [
        CategoriesModel(
          adminId: adminId,
          catId: categoryId,
          catName: categoyName,
          catImg: categoyimg,
          productModel: [
            ProductModel(
              proCategory: categoyName,
              proId: productId,
              proName: productName,
              proPrice: productPrice,
              proDisc: productDiscount,
              isDicount: isDiscount,
              proRate: proRate,
              daysToDelivery: 3,
              proImage: productImg,
              proImagePath: productsimgPath,
            ),
          ],
        ),
      ],
    );
  }
}
