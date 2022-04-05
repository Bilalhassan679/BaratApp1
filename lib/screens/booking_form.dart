import 'package:barat/widgets/reusableBigText.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({Key? key}) : super(key: key);

  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 500.h,
          padding: EdgeInsets.only(top: 25.0.h, left: 10.0.w, right: 10.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: ReusableBigText(
                  text: "Booking Form",
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10.h),
              DateTimePicker(
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 2.0),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                type: DateTimePickerType.dateTimeSeparate,
                dateMask: 'd MMM, yyyy',
                initialValue: DateTime.now().toString(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                // icon: Icon(Icons.event),
                dateLabelText: 'Date',
                timeLabelText: "Hour",
                selectableDayPredicate: (date) {
                  // Disable weekend days to select from the calendar
                  if (date.weekday == 6 || date.weekday == 7) {
                    return false;
                  }

                  return true;
                },
                onChanged: (val) => print(val),
                validator: (val) {
                  if (kDebugMode) {
                    print(val);
                  }
                  return null;
                },
                onSaved: (val) => print(val),
              ),
              SizedBox(height: 10.h),
              const TextField(
                decoration: InputDecoration(
                  focusColor: Colors.black,
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.black,
                        width: 2.0),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                        width: 2.0),
                  ),
                  labelText: 'No of Guests',
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableBigText(
                      text: 'Catering Service',
                      fontSize: 20,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    Row(
                      children: [
                        Container(
                            height: 50.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  bottomLeft: Radius.circular(25)),
                              color: Colors.red,
                            ),
                            child: const Center(child: Text('Yes'))),
                        Container(
                            height: 50.h,
                            width: 80.w,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
                              color: Colors.yellow,
                            ),
                            child: const Center(child: Text('No'))),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
