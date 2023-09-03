import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final Image? prefixIcon;
  final Image? suffixIcon;

  const CustomTextField({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: size.width,
        height: 50,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: Colors.grey.shade100,
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderSide: BorderSide(color: Colors.white),
            //   borderRadius: BorderRadius.circular(10),
            // ),
            filled: true,
            labelText: label,
          ),
        ),
      ),
    );
  }
}
