import 'package:aliv/const/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const CustomButton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CupertinoButton(
          borderRadius: BorderRadius.circular(15),
          color: primaryColor,
          onPressed: onpressed,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
