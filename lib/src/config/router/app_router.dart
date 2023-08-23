import 'package:auto_route/auto_route.dart';

import '../../presentation/views/orders_page.dart';

part 'app_router.gr.dart';

// @AutoRouterConfig()
// class AppRouter extends $AppRouter {
//   @override
//   RouteType get defaultRouteType => RouteType.material(); //.cupertino, .adaptive ..etc

//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(page: HomePage, initial: true),
//       ];
// }

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OrdersRoute.page, initial: true),
      ];
}
