import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app_binding.dart';
import 'common/routes/routes.dart';
import 'di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
              title: 'Mzizi',
              debugShowCheckedModeBanner: false,
              enableLog: true,
              initialRoute: Routes.LOGIN,
              smartManagement: SmartManagement.keepFactory,
              getPages: AppPages.routes,
              initialBinding: AppBinding(),
              builder: EasyLoading.init(),
              theme: ThemeData());
        });
  }
}
