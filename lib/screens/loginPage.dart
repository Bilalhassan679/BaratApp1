import 'package:barat/screens/HomePage.dart';
import 'package:barat/screens/admin.dart';
import 'package:barat/screens/signUpPage.dart';
import 'package:barat/services/credentialservices.dart';
import 'package:barat/utils/color.dart';
import 'package:barat/widgets/reusableTextField.dart';
import 'package:barat/widgets/reusableTextIconButton.dart';
import 'package:barat/widgets/reusablealreadytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final CredentialServices credentialServices = CredentialServices();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final String email = "admin@gmail.com";
  final int password = 12345;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
    _password.dispose();
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
                      SizedBox(
                          width: height * 0.4,
                          child: const Image(
                              image: const AssetImage('images/logo1.png'))),
                      SizedBox(
                        height: height * 0.01,
                      ),

                      ReusableTextField(
                        controller: _email,
                        hintText: 'email',
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      ReusableTextField(
                        controller: _password,
                        hintText: 'password',
                        keyboardType: TextInputType.visiblePassword,
                        obscure: true,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          if (_email == email.toString() &&
                              _password == password.toString()) {
                            Get.off(() => const HomePage());
                          } else {
                            Get.off(() => const AdminPage());
                          }
                        },
                        child: InkWell(
                          onTap: () {
                            credentialServices.loginPost(_email.text.toString(),
                                _password.text.toString());
                          },
                          child: ReusableTextIconButton(
                            text: "Login",
                          ),
                        ),
                      ),
                      ReusableAlreadyText(
                        text: 'Signup',
                        onClick: () => Get.off(() => const SignUpPage()),
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
