import 'package:flutter/material.dart';

Color color1 = const Color(0xFF4A396B); // #4A396B
Color color2 = const Color(0xFF675897); // #675897

int averageRed = ((color1.red + color2.red) / 2).round();
int averageGreen = ((color1.green + color2.green) / 2).round();
int averageBlue = ((color1.blue + color2.blue) / 2).round();

Color primaryColor = Color.fromARGB(255, averageRed, averageGreen, averageBlue);

Color appBarColor = const Color(0xffF1F5F5);
