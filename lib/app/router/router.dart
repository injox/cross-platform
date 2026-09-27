import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:flutter_labs/app/features/home/home_screen.dart';
import 'package:flutter_labs/app/features/home/product_details_screen.dart';
import 'package:flutter_labs/app/features/home/product.dart';
import 'package:flutter_labs/di/di.dart';

final _rootNavigationKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  observers: [TalkerRouteObserver(talker)],
  debugLogDiagnostics: true,
  initialLocation: '/home',
  navigatorKey: _rootNavigationKey,
  routes: [
    GoRoute(
      path: '/home',
      pageBuilder: (_, state) => MaterialPage(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),

    GoRoute(
      path: '/product',
      pageBuilder: (_, state) {
        final product = state.extra as Product;

        return MaterialPage(
          key: state.pageKey,
          child: ProductDetailsScreen(
            product: product,
          ),
        );
      },
    ),
  ],
);