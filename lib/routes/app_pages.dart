import 'package:get/get.dart';
import '../all_bindings.dart';
import '../home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final initial = _Paths.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
  ];
}
