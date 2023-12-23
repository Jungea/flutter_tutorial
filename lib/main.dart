import 'package:flutter/material.dart';
import 'package:flutter_tutorial/const/colors.dart';
import 'package:flutter_tutorial/screen/random_dice.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: backgroundColor,
      sliderTheme: SliderThemeData(
        thumbColor: primaryColor,
        activeTrackColor: primaryColor,
        inactiveTrackColor: primaryColor.withOpacity(0.3),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: secondaryColor,
        backgroundColor: backgroundColor,
      ),
    ),
    home: RandomDice(),
  ));
}