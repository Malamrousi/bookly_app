import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/servier_locater.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/feature_book/feature_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/newest_books/newset_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBookCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(homeRepo: getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
