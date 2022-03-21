import 'package:barat/widgets/loading_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      LoadingButton(
          onClick: () async {
            if (kDebugMode) {
              print('asfkjlasdfj');
            }
          },
          color: Colors.red,
          childWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Image Uploaded'),
            ],
          ))
    ]));
  }
}
