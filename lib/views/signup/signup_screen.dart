import 'package:aliv/views/signup/otp_screen.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../comman/custom_button.dart';
import '../../comman/custom_textfield.dart';
import '../../const/icons.dart';
import '../../const/images.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                      height: size.height * 0.045,
                    ),
                    //
                    Text(
                      "Sign Up",
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
                        'Create an  account to become part of the \n                Aliv event community!',
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
                                color: Colors.grey.shade300,
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
                                  fillColor: Colors.grey.shade300,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
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
                    const SizedBox(
                      height: 25,
                    ),

                    //
                    SizedBox(
                        width: size.width,
                        child: CustomButton(
                            text: "Sign Up",
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OtpScreen()));
                            })),
                    //
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "Already a member ?",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'SignIn',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 20,
                    ),
                    //
                    const Text("By pressing 'SIGN UP' button above you agree"),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "to the",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          TextSpan(
                            text: '&',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
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
