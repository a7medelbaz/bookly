import 'package:bookly/Core/utils/api_service.dart';
import 'package:bookly/Features/Home/data/repositories/home_repo_implementation.dart';
import 'package:bookly/Features/Home/presentation/logic/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/logic/general_books_cubit/general_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../Features/Home/presentation/views/book_details_view.dart';
import '../../Features/Home/presentation/views/home_view.dart';
import '../../Features/Home/presentation/views/search_view.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';
import 'constants.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: MyRoutes.splashViewRoute,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: MyRoutes.homeViewRoute,
        pageBuilder: (context, state) => buildPageWithTransition(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => BestSellerBooksCubit(
                  homeRepo: HomeRepoImplementation(
                    apiService: ApiService(),
                  ),
                ),
              ),
              BlocProvider(
                create: (context) => GeneralBooksCubit(
                  homeRepo: HomeRepoImplementation(
                    apiService: ApiService(),
                  ),
                ),
              ),
            ],
            child: HomeView(),
          ),
          key: state.pageKey,
        ),
      ),
      GoRoute(
        path: MyRoutes.bookDetailsViewRoute,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(
        path: MyRoutes.searchViewRoute,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}

// Helper method for custom transition
Page<dynamic> buildPageWithTransition({
  required Widget child,
  required LocalKey key,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Right to Left with Fade transition
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var slideTween = Tween(
        begin: begin,
        end: end,
      ).chain(CurveTween(curve: curve));
      var slideAnimation = animation.drive(slideTween);

      var fadeTween = Tween<double>(begin: 0.0, end: 1.0);
      var fadeAnimation = animation.drive(fadeTween);

      return FadeTransition(
        opacity: fadeAnimation,
        child: SlideTransition(position: slideAnimation, child: child),
      );
    },
    transitionDuration: MyConstants.kTransitionDuration,
  );
}
