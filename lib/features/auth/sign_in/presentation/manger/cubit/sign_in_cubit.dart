import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/widgets/alert_dialog.dart';
import 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  static SignInCubit get(context) => BlocProvider.of(context);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signIn({
    required context,
    required String email,
    required String password,
  }) async {
    try {
      emit(SignInLoading());
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignInSuccess());
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
      emit(SignInFailed(e.toString()));
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
