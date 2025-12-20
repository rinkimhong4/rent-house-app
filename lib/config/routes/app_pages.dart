import 'package:get/get.dart';
import 'package:rent_house/config/routes/app_routes.dart';
import 'package:rent_house/view/dashboard_screen.dart';

class AppRouting {
  static final route = RouteView.values.map((e) {
    switch (e) {
      case RouteView.home:
        return GetPage(
          name: "/",
          page: () => const DashboardScreen(),
          // transition: Transition.noTransition,
        );
      // case RouteView.splash:
      //   return GetPage(
      //     name: "/${e.name}",
      //     page: () => const SplashScreen(),
      //     // binding: NotificationBinding(),
      //   );
    }
  }).toList();
}
