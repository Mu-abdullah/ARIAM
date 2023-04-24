import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/bloc_observer.dart';
import 'core/utils/app_routs.dart';
import 'core/utils/shared_prefrence.dart';
import 'firebase_options.dart';


late String initialRoute;

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheHelper.init();
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  Bloc.observer = MyBlocObserver();
  runApp(const Ariam());

  if (onBoarding != null) {
    FirebaseAuth.instance.idTokenChanges().listen((User? user) {
      if (user != null) {
        initialRoute = AppRouter.bottomNavigationScreen;
      } else {
        initialRoute = AppRouter.signInScreen;
      }
    });
  } else {
    initialRoute = AppRouter.onBoardScreen;
  }
}

class Ariam extends StatelessWidget {
  const Ariam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
