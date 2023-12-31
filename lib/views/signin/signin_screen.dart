import 'package:aliv/comman/custom_textfield.dart';
import 'package:aliv/const/icons.dart';
import 'package:aliv/const/images.dart';
import 'package:aliv/views/forgetpassword/forget_password_screen.dart';
import 'package:aliv/views/signup/signup_screen.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

import 'package:flutter/material.dart';

import '../navbar/navbar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
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
                      height: size.height * 0.15,
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
                      height: size.height * 0.045,
                    ),
                    //
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05),
                    ),
                    //
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                      child: Text(
                        'The journey to Aliv Events starts here and \n                Aliv together with YOU!',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () async {
                              final code = await countryPicker.showPicker(
                                  context: context);
                              setState(() {
                                countryCode = code;
                              });
                            },
                            child: Container(
                              width: 100, // Adjust the width as needed
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      child: countryCode != null
                                          ? countryCode!.flagImage()
                                          : null),
                                  countryCode != null
                                      ? Text(countryCode!.dialCode)
                                      : const Text("+92"),
                                  const Icon(Icons.arrow_drop_down),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.55,
                            height: 50,
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  label: const Text("Enter Phone Number")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    CustomTextField(
                      label: "*****",
                      prefixIcon: Image.asset(
                        lockIcon,
                        scale: 0.7,
                      ),
                      suffixIcon: Image.asset(
                        passHideIcon,
                        scale: 1.1,
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPasswordScreen()));
                        },
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forget Password",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    //
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NavBar()));
                      },
                      child: SizedBox(
                          width: size.width, child: Image.asset(signInButton)),
                    ),
                    //
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: "Don't have an account ?",
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Create Account',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
