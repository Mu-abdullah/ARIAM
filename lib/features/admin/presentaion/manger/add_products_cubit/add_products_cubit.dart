import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/entities/admin_model.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/texts.dart';
import '../../../../../core/widgets/custom_snack_bar.dart';
import 'add_products_state.dart';
import 'package:firebase_storage/firebase_storage.dart' as fire_storage;

class AddProductsCubit extends Cubit<AddProductsState> {
  AddProductsCubit() : super(AddProductsInitial());

  static AddProductsCubit get(context) => BlocProvider.of(context);

////////////////////image picker////////////////////
  File? image;
  var picker = ImagePicker();

  Future<void> getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      image = File(pickedFile.path);
      emit(GetProductImageFileSuccess());
    } else {
      print("No Image Selected");
      emit(GetProductImageFileError());
    }
  }

////////////////////add img to firebase////////////////////
  String? imagePath;
  String? imageUrl;
  void uploadPhoto(context, String categoryName, String admin) {
    emit(UploadProductImageLoading());
    snackBar(context, contentText: "Uploading", seconds: 1);
    fire_storage.FirebaseStorage.instance
        .ref()
        .child(
            "${AssetDate().adminKey}/${AssetDate().productsKey}/$categoryName/${Uri.file(image!.path).pathSegments.last}")
        .putFile(image!)
        .then((p0) {
      p0.ref.getDownloadURL().then((value) {
        imageUrl = value;

        imagePath = p0.ref.fullPath;
        print(p0.ref.fullPath.toString());

        snackBar(context, contentText: "Done", seconds: 1);
        emit(UploadProductImageSuccess());
      }).catchError((onError) {
        emit(UploadProductImageError(onError.toString()));
      });
    }).catchError((onError) {
      emit(UploadProductImageError(onError.toString()));
    });
  }

////////////////////delete img from firebase////////////////////
  void deleteImage({required String pathImageFromFireStore}) async {
    final storageRef = FirebaseStorage.instance.ref();
    final desertRef = storageRef.child(pathImageFromFireStore);
    await desertRef.delete();
  }

  Future<void> sendData({required AdminModel admin}) async {
    emit(Loading());
    try {
      await FirebaseFirestore.instance
          .collection(AssetDate().adminKey)
          .doc(admin.brandID)
          .set(admin.toJson());
      emit(Succsess());
    } catch (e) {
      emit(Failed(e.toString()));
    }
  }
////////////////////drop menu////////////////////
  String? selectedValue;
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(value: "Yes", child: Texts().titleText(text: "Yes")),
      DropdownMenuItem(value: "No", child: Texts().titleText(text: "No")),
    ];
    return menuItems;
  }

  void changeValue(String value) {
    selectedValue = value;
    emit(ChangeToggle());
  }

  ////////////////////is discount////////////////////
  bool isDisc = false;
  void disc() {
    isDisc = !isDisc;
    emit(IsDiscount());
  }
}
