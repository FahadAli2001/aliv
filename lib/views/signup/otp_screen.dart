import 'package:aliv/views/signup/signup_profile_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../comman/custom_button.dart';
import '../../const/images.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
                      "Enter OTP",
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
                        'We have sent notification code',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    //
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 7),
                      child: Text(
                        'on you given number 0321*******',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 30),
                      child: OTPTextField(
                        length: 5,
                        width: MediaQuery.of(context).size.width,
                        style: const TextStyle(fontSize: 20),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {},
                      ),
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                          width: size.width,
                          child: CustomButton(
                              text: "Verify",
                              onpressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpProfileInfoScreen()));
                              })),
                    ),
                    //
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    //
                    const Center(
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //
                    SizedBox(
                      height: size.height * 0.32,
                    ),
                    //
                    const Center(
                      child: Text(
                        "Change Phone Number",
                        style: TextStyle(color: Colors.orange),
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
