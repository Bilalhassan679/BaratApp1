import 'package:barat/screens/signUpPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        home: const SignUpPage(),
        // initialRoute: '/',
        // routes: {
        //   '/': (context) => const SplashScreen(),
        //   '/Home-Page': (context) => const HomePage()
        // },
      ),
    );
  }
}
