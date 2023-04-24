import 'package:ariam/features/admin/presentaion/manger/add_products_cubit/add_products_state.dart';
import 'package:ariam/features/user_profile/data/user_model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_routs.dart';
import '../../../../../../core/widgets/alert_dialog.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static SignUpCubit get(context) => BlocProvider.of(context);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signUp(
      {required context,
      required String email,
      required String password,
      required UserModel model}) async {
    try {
      emit(SignUpLoading());
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Send user details to Firebase
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set((model.toJson()));
      emit(SignUpSuccess());

      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      // Show alert message
      customAlertDialog(
        context,
        titleText: "Error",
        contentText: "Something wronge, please try again...",
        circularProgressIndicator: false,
        
      );
      return null;
    } catch (e) {
      print(e);
      emit(SignUpFailed(e.toString()));
      // Show alert message
      customAlertDialog(
        context,
        titleText: "Error",
        contentText: "Something wronge, please try again...",
        circularProgressIndicator: false,
       
      );
      return null;
    }
  }
}
