import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    //bottomAppBarColor: bottomNavBarColor,
    // bottomAppBarTheme: BottomAppBarTheme(
    //   color: bottomNavBarColor,
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: bottomNavBarColor,
      selectedItemColor: secondaryColor,
      unselectedItemColor:regularTextColor.withOpacity(0.70),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    ),
    fontFamily: "Inter",
    appBarTheme: appBarTheme(),
    // textTheme: textTheme(),.
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: secondaryColor, //thereby
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
          color: boldTextColor
      ),
    ),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(32),
    borderSide: const BorderSide(color: Colors.transparent),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    //color: backgroundColor,
    backgroundColor: backgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(color: iconColor),
    titleTextStyle: TextStyle(
        color:  boldTextColor,
        fontSize: 14,
        fontFamily: 'Inter'
    ),
    toolbarTextStyle: TextStyle(
        color:  boldTextColor,
        fontSize: 14,
        fontFamily: 'Inter'
    ),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
