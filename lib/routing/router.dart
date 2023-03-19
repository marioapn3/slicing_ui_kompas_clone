import 'package:go_router/go_router.dart';
import 'package:kompas_clone_mario/detail/detail_news.dart';
import 'package:kompas_clone_mario/home_news/home_news.dart';
import 'package:kompas_clone_mario/news/menu_new.dart';
import 'package:kompas_clone_mario/news/new_screen.dart';
import 'package:kompas_clone_mario/news/save_news.dart';

import 'package:kompas_clone_mario/onboard/onboarding_screen.dart';
import 'package:kompas_clone_mario/profile/change_profile.dart';
import 'package:kompas_clone_mario/profile/profile.dart';
import 'package:kompas_clone_mario/search_screen/search_screen.dart';
import 'package:kompas_clone_mario/signUp/sign_up.dart';
import 'package:kompas_clone_mario/singIn/sign_in.dart';

final goRouter =
    GoRouter(
        initialLocation: '/',
        debugLogDiagnostics: true,
        routes: [
          GoRoute(
              path: '/',
              builder: (context, state) => const Onboarding(),
              routes: [
                GoRoute(
                  path: 'mainScreen',
                  builder: (context, state) => const MainScreen(),
                ),
                GoRoute(
                  path: 'signIn',
                  builder: (context, state) => const SignIn(),
                  routes: [
                    GoRoute(
                        path: 'signUp',
                        builder: (context,state) => const SignUp()
                    )
                  ]
                ),
                GoRoute(
                    path: 'homeScreen',
                    builder: (context,state) => const MainScreen(),
                    routes: [
                      GoRoute(
                        path: 'detailNews',
                        builder: (context,state) => const DetailNews(),
                      ),
                      GoRoute(
                        path: 'profileUser',
                        builder: (context,state) => const ProfileUser(),
                        routes: [
                          GoRoute(
                            path: 'changeProfile',
                            builder: (context,state) => const ChangeProfile(),
                          )
                        ]
                      ),
                      GoRoute(
                        path: 'searchScreen',
                        builder: (context,state) => const SearchScreen()
                      )
                    ]
                ),
                GoRoute(
                    path: 'menuScreen',
                    builder: (context,state) => const MenuNews()
                ),
                GoRoute(
                    path: 'newScreen',
                    builder: (context,state) => const NewsScreen(),
                ),
                GoRoute(
                    path: 'saveScreen',
                    builder: (context,state) => const SaveNews()
                ),




              ])
        ]);
