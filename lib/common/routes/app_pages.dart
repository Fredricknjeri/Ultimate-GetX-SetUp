import 'package:get/get.dart';

import '../../views/home/home.dart';
import '../../views/login/login.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    //? model routes example

    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
      binding: SignInBinding(),
      children: [
        GetPage(name: Routes.HOME, page: () => HomeView()),
      ],
    ),
  ];
}
