import 'package:ariam/features/auth/sign_up/presentation/manger/cubit/sign_up_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/admin/presentaion/manger/add_products_cubit/add_products_cubit.dart';
import '../../features/admin/presentaion/views/add_products.dart';
import '../../features/admin/presentaion/views/widgets/add_new_products_details_screen.dart';
import '../../features/auth/sign_in/presentation/manger/cubit/sign_in_cubit.dart';
import '../../features/boarding_screen/views/onboarding_screen.dart';
import '../../features/bottom_navigation_bottom/presentation/manger/home_cubit/bottom_navigation_cubit.dart';
import '../../features/bottom_navigation_bottom/presentation/views/bottom_navigation_bottom.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/saved/presentation/views/save_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/user_profile/presentation/views/user_profile.dart';
import '../../features/admin/presentaion/views/admin_screen_view.dart';
import '../../features/auth/sign_in/presentation/views/sign_in_view_screen.dart';
import '../../features/auth/sign_up/presentation/views/sign_up_view_screen.dart';
import '../../features/product_details/presentation/views/details_screen.dart';
import '../../main.dart';

abstract class AppRouter {
  static const bottomNavigationScreen = '/bottomNavigationScreen';
  static const onBoardScreen = '/onBoardScreen';
  static const homeScreen = '/homeScreen';
  static const saveScreen = '/saveScreen';
  static const searchScreen = '/searchScreen';
  static const userScreen = '/userScreen';
  static const productDetailsScreen = '/detailsScreen';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static const adminScreen = '/adminScreen';
  static const adminAddProductsScreen = '/adminAddProductsScreen';
  static const addProductsDitailsScreen = '/addProductsDitailsScreen';
  void tester() {}
  static final router = GoRouter(
    initialLocation: adminAddProductsScreen /*initialRoute*/,
    routes: [
      GoRoute(
        path: bottomNavigationScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => BottomNavigationCubit(),
          child: const BottomNavigationScreen(),
        ),
      ),
      GoRoute(
        path: onBoardScreen,
        builder: (context, state) => const OnBoardingScreenView(),
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreenView(),
      ),
      GoRoute(
        path: saveScreen,
        builder: (context, state) => const SavedScreenView(),
      ),
      GoRoute(
        path: searchScreen,
        builder: (context, state) => const SearchScreenView(),
      ),
      GoRoute(
        path: userScreen,
        builder: (context, state) => const UserProfileScreenView(),
      ),
      GoRoute(
        path: productDetailsScreen,
        builder: (context, state) => const ProductDetailsScreenView(),
      ),
      GoRoute(
        path: signInScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(),
          child: const SignInScreenView(),
        ),
      ),
      GoRoute(
        path: signUpScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(),
          child: const SignUpScreenView(),
        ),
      ),
      GoRoute(
        path: adminScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => AddProductsCubit(),
          child: const AdminScreenView(),
        ),
      ),
      GoRoute(
        path: adminAddProductsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => AddProductsCubit(),
          child: const AddImageProductsScreenView(),
        ),
      ),
      GoRoute(
        path: addProductsDitailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => AddProductsCubit(),
          child: const AddNewProductDetailsScreen(),
        ),
      ),
    ],
  );
}
