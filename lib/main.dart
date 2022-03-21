import 'package:barat/screens/areaForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Barat',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const AdminAreaForm(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const SplashScreen(),
        //   '/Home-Page': (context) => const HomePage()
        // },
      ),
    );
  }
}
