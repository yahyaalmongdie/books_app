import 'package:booky_app/core/utils/service_locator.dart';
import 'package:booky_app/features/home/data/model/book_model/book_model.dart';
import 'package:booky_app/features/home/data/repo/home_repo_impl.dart';
import 'package:booky_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booky_app/features/home/presentation/views/book_details_view.dart';
import 'package:booky_app/features/home/presentation/views/home_view.dart';
import 'package:booky_app/features/search/presentation/view/search_view.dart';
import 'package:booky_app/features/splash/presentation/pages/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'homeView',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeView();
            },
          ),
          GoRoute(
            
            path: 'bookDetailsView',
            builder: (BuildContext context, GoRouterState state) {
              return  BlocProvider(
                create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
                child:  BookDetailsView(
                  bookModel: state.extra as BookModel,
                ),
              );
            },
          ),
          GoRoute(
            path: 'searchView',
            builder: (BuildContext context, GoRouterState state) {
              return const SearchView();
            },
          ),
        ],
      ),
    ],
  );
}
