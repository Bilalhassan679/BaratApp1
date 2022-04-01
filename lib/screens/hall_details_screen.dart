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
        body: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                // width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(images[index]),
                        // image: AssetImage("images/" + images[index]),
                        fit: BoxFit.cover)
                    // image: DecorationImage(image:),

                    ),
                child: Container(
                  height: 10.h,
                  margin: EdgeInsets.only(top: 150, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(text[index]),
                          // AppLargeText(text: text[index]),
                          // AppText(
                          //   text: "Mountain",
                          //   size: 30,
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          // Container(
                          //     width: 250,
                          //     child: AppText(
                          //       text: "Mountain hikes give you an ancredible "
                          //           "sense of freedom along with endurance tests",
                          //       color: AppColors.textColor2,
                          //     )),
                          SizedBox(
                            height: 20,
                          ),
                          // ResponsiveButton(
                          //   width: 120,
                          // )
                        ],
                      ),
                      Column(
                          children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        );
                      }))
                    ],
                  ),
                ),
              );
            }));
  }
}
