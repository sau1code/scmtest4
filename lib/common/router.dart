import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/overview/pending_order/pending_order.dart';
import '../screens/overview/purchase_order/purchase_order.dart';
import '../screens/overview/purchase_requisition/purchase_requisition.dart';

GoRouter router() {
  return GoRouter(
      initialLocation: '/home',
      routes: [

        GoRoute(
          path: '/login',
          pageBuilder: (context, state) {
            return animInFromTop(
                state: state,
                route: const LoginScreen()
            );
          },
        ),

        GoRoute(
          path: '/home',
          pageBuilder: (context, state) {
            return animInFromRight(
                state: state,
                route: const HomeScreen()
            );
          },
        ),

        GoRoute(
          path: '/purchase_requisition',
          pageBuilder: (context, state) {
            return animInFromRight(
                state: state,
                route: const PurchaseRequisitionScreen()
            );
          },
        ),

        GoRoute(
          path: '/purchase_order',
          pageBuilder: (context, state) {
            return animInFromRight(
                state: state,
                route: const PurchaseOrderScreen()
            );
          },
        ),

        GoRoute(
          path: '/pending_order',
          pageBuilder: (context, state) {
            return animInFromRight(
                state: state,
                route: const PendingOrderScreen()
            );
          },
        )

      ]
  );
}

animInFromRight({required GoRouterState state, required Widget route}) =>
    CustomTransitionPage<void>(
      key: state.pageKey,
      child: route,

      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child
          ) => SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
        ),
        child: child,
      ),
    );


animInFromTop({required GoRouterState state, required Widget route}) =>
    CustomTransitionPage<void>(
      key: state.pageKey,
      child: route,

      transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child
          ) => SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
        ),
        child: child,
      ),
    );

class RouteAnim extends PageRouteBuilder {
  final Widget page;
  RouteAnim({required this.page})
      : super(

    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) => page,

    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) => SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    ),

  );
}
