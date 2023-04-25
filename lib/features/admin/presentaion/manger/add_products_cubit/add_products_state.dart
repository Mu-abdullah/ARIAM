abstract class AddProductsState {}

class AddProductsInitial extends AddProductsState {}

class GetProductImageFileSuccess extends AddProductsState {}

class GetProductImageFileError extends AddProductsState {}

class Loading extends AddProductsState {}

class Succsess extends AddProductsState {}

class ChangeToggle extends AddProductsState {}

class IsDiscount extends AddProductsState {}

class Failed extends AddProductsState {
  final String errorMsg;

  Failed(this.errorMsg);
}

class UploadProductImageSuccess extends AddProductsState {}

class UploadProductImageError extends AddProductsState {
  UploadProductImageError(String error);
}

class UploadProductImageLoading extends AddProductsState {}
