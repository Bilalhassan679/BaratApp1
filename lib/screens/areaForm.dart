import 'package:barat/widgets/reusableBigText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color.dart';
import '../widgets/reusableTextField.dart';
import '../widgets/reusableTextIconButton.dart';
import 'admin.dart';

class AdminAreaForm extends StatefulWidget {
  const AdminAreaForm({Key? key}) : super(key: key);

  @override
  State<AdminAreaForm> createState() => _AdminAreaFormState();
}

class _AdminAreaFormState extends State<AdminAreaForm> {
  final TextEditingController areaName = TextEditingController();
  final TextEditingController areaImage = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    areaName.dispose();
    areaImage.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            color: primaryColor,
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Container(
                  margin: const EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text('data')
                      ReusableBigText(text: "Admin"),
                      SizedBox(
                        height: height * 0.01,
                      ),

                      ReusableTextField(
                        controller: areaName,
                        hintText: 'Area Name',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),

                      SizedBox(
                        height: height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Get.off(() => const AdminPage());
                        },
                        child: const ReusableTextIconButton(
                          text: "Submit",
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
