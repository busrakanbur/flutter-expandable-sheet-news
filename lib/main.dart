import 'package:flutter/material.dart';
import 'package:flutter_expandable_bottom_sheet/all_bindings.dart';
import 'package:flutter_expandable_bottom_sheet/home_controller.dart';
import 'package:flutter_expandable_bottom_sheet/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  Get.put(HomeController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 46, 46, 46),
          secondary: Colors.black54,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
      initialBinding: AllBindings(),
    );
  }
}
