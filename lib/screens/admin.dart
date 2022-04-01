import 'package:barat/screens/HomePage.dart';
import 'package:barat/screens/areaForm.dart';
import 'package:barat/screens/hallsdetailform.dart';
import 'package:barat/widgets/loading_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      LoadingButton(
          onClick: () async {
            if (kDebugMode) {
              Get.to(const AdminAreaForm());
            }
          },
          color: Colors.red,
          childWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Create Area'),
            ],
          )),
      SizedBox(height: 10.h),
      LoadingButton(
          onClick: () async {
            if (kDebugMode) {
              Get.to(const HallsDetailForm());
            }
          },
          color: Colors.red,
          childWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Create Halls'),
            ],
          )),
      SizedBox(height: 10.h),
      LoadingButton(
          onClick: () async {
            if (kDebugMode) {
              Get.to(const HomePage());
            }
          },
          color: Colors.red,
          childWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Go To Home Page '),
            ],
          ))
    ]));
  }
}
