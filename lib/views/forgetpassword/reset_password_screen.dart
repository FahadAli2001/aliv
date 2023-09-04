import 'package:flutter/material.dart';

import '../../comman/custom_textfield.dart';
import '../../const/icons.dart';
import '../../const/images.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(colorBanner), fit: BoxFit.fill)),
          ),
          Container(
              width: size.width,
              height: size.height * 0.99,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.2,
                    ),
                    Center(
                      child: Image.asset(
                        blackAppIcon,
                        width: 200,
                        height: 100,
                      ),
                    ),
                    //
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    //
                    Text(
                      "Rest Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05),
                    ),
                    //
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      child: Text(
                        'Set the password for your account so \n         ypu can login and access Aliv community!',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    //
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    //
                    CustomTextField(
                      label: "Password",
                      suffixIcon: Image.asset(
                        passHideIcon,
                        scale: 0.7,
                      ),
                      prefixIcon: Image.asset(
                        lockIcon,
                        scale: 0.7,
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: CustomTextField(
                        label: "Password",
                        suffixIcon: Image.asset(
                          passHideIcon,
                          scale: 0.7,
                        ),
                        prefixIcon: Image.asset(
                          lockIcon,
                          scale: 0.7,
                        ),
                      ),
                    ),
                    //
                    //

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                          width: size.width,
                          child: Image.asset(continueButton)),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
