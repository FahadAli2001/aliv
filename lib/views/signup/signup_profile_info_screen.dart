import 'package:aliv/comman/custom_textfield.dart';
import 'package:aliv/const/icons.dart';
import 'package:flutter/material.dart';

import '../../const/images.dart';

class SignUpProfileInfoScreen extends StatefulWidget {
  const SignUpProfileInfoScreen({super.key});

  @override
  State<SignUpProfileInfoScreen> createState() =>
      _SignUpProfileInfoScreenState();
}

class _SignUpProfileInfoScreenState extends State<SignUpProfileInfoScreen> {
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
                      height: size.height * 0.1,
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
                      "SignUp",
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
                        'Create an  account to become part of the \n                Aliv event community!',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CustomTextField(
                        label: "First Name",
                        prefixIcon: Image.asset(
                          profileIcon,
                          scale: 0.7,
                        ),
                      ),
                    ),
                    //
                    CustomTextField(
                      label: "Last Name",
                      prefixIcon: Image.asset(
                        profileIcon,
                        scale: 0.7,
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CustomTextField(
                        label: "Email Address",
                        prefixIcon: Image.asset(
                          emailIcon,
                          scale: 0.7,
                        ),
                      ),
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
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: CustomTextField(
                        label: "Confirm Password",
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
                    CustomTextField(
                      label: "Confirm Password",
                      suffixIcon: Image.asset(
                        locationIcon,
                        scale: 0.7,
                      ),
                      prefixIcon: Image.asset(
                        mapLocationIcon,
                        scale: 0.7,
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 15),
                      child: Row(
                        children: [
                          Checkbox(value: true, onChanged: (val) {}),
                          const Text(
                            "I agree to receive marketing and \n promotional offers from ALIV.",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                          width: size.width,
                          child: Image.asset(createAccountButton)),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
