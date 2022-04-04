import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReusableDetailsCopyText extends StatelessWidget {
  String text1;
  String text2;
  ReusableDetailsCopyText({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100.w,
            child: Text(
              text1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
          ),
          Container(
            width: 60,
            height: 35,
            child: SelectableText(
              text2,
              textAlign: TextAlign.end,
              minLines: 3,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
