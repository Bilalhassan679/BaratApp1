import 'package:barat/screens/booking_form.dart';
import 'package:barat/widgets/reusable_detail_copy_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../utils/color.dart';

class HallDetailScreen extends StatefulWidget {
  const HallDetailScreen({Key? key}) : super(key: key);

  @override
  _HallDetailScreenState createState() => _HallDetailScreenState();
}

class _HallDetailScreenState extends State<HallDetailScreen> {
  // List images = [
  //   'welcome-one.png',
  //   'welcome-two.png',
  //   'welcome-three.png',
  // ];
  List images = Get.arguments[0]['ListImage'];
  List text = ['Trips', "Mountain Trips", "Climbing"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('24,$images');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Container(
        color: Colors.black,
        child: CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
            width: 800,
            // margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black54,
                image: DecorationImage(
                    image: NetworkImage("${images[itemIndex]}"),
                    fit: BoxFit.fitWidth)),
            child: Padding(
              padding: EdgeInsets.only(bottom: 25.0.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      children: List.generate(images.length, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 8,
                      width: itemIndex == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        color: itemIndex == indexDots
                            ? Colors.blue
                            : Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    );
                  })),
                ],
              ),
            ),
          ),
          options: CarouselOptions(
            autoPlay: false,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            // viewportFraction: 0.9,
            // aspectRatio: 2.0,
            initialPage: 0,
          ),
        ),
      ),
      SizedBox(height: 10.h),
      Expanded(
          child: SingleChildScrollView(
              child: Container(
                  height: 550.h,
                  child: Column(children: <Widget>[
                    const Text(
                      "DETAILS",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    ReusableDetailsCopyText(
                      text1: "Owner/Manger",
                      text2: "name",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Contact",
                      text2: "name",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Email",
                      text2: "name",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Email",
                      text2: "name",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Address",
                      text2: "name",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Capacity of hall",
                      text2: "S-34 8th Staff line DHA Defence Phase 1",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Catering Service per head",
                      text2: "name",
                    ),
                    ReusableDetailsCopyText(
                      text1: "Event planner services",
                      text2: "name",
                    ),
                    SizedBox(
                      height: 50.h,
                      width: 110.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const BookingForm());
                        },
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontSize: 17.sp,
                            color: whiteColor,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.blueGrey,
                          primary: secondaryColor,
                          elevation: 9,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            // <-- Radius
                          ),
                        ),
                      ),
                    )
                  ]))))
    ])));
  }
}
