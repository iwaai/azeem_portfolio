import 'package:flutter/material.dart';

class AppColors
{
  static Color secondaryColor = Colors.black;
  static Color primaryColor = const Color(0xFFE7A423);
  // static Color primaryColor = const Color(0xFFA6A6A6);

  static ThemeData getLightTheme(){
    return ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed( seedColor: primaryColor),
        useMaterial3: true,
        primaryColor: primaryColor,
        focusColor: primaryColor,
        primaryColorDark: Colors.black,
        primaryColorLight: primaryColor,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStatePropertyAll(primaryColor),
          trackColor: MaterialStatePropertyAll(Colors.grey.shade300),
          // thumbVisibility: MaterialStatePropertyAll(true),
          // trackVisibility: MaterialStatePropertyAll(true),
        ),
        radioTheme: RadioThemeData(
          fillColor: MaterialStatePropertyAll(primaryColor)
        ),
        cardTheme: CardTheme(
          color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
          // surfaceTintColor: Colors.white,
        ),
        cardColor: Colors.white,
        dividerTheme: DividerThemeData(
            color: Colors.grey.shade300
        ),
        listTileTheme: ListTileThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
        ),
        dividerColor: Colors.grey,
        dialogBackgroundColor: Colors.white,
        dialogTheme: const DialogTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )
              ),
              backgroundColor: MaterialStatePropertyAll(primaryColor),
              foregroundColor: const MaterialStatePropertyAll(Colors.black),
            )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )
              ),
              side: MaterialStatePropertyAll(
                BorderSide(color: primaryColor, width: 2.0),
              ),
              foregroundColor: MaterialStatePropertyAll(
                  primaryColor
              )
          ),

        ),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.amber,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 0,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.black),
            foregroundColor: Colors.black
        ),
        iconTheme: IconThemeData(
          color: primaryColor
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
            color: primaryColor
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor
        ),
        timePickerTheme: const TimePickerThemeData(
          backgroundColor: Colors.white,
          cancelButtonStyle: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.black)
          ),
          confirmButtonStyle: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.black)
          )
      ),
        switchTheme: const SwitchThemeData(
            trackColor: MaterialStatePropertyAll(Colors.amber)
        )
    );
  }

  static ThemeData getDarkTheme(){
    return ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber),
        useMaterial3: true,
        primaryColor: Colors.white,
        focusColor: Colors.black,
        primaryColorDark: Colors.white,
        primaryColorLight: Colors.grey.shade900,
        scrollbarTheme: ScrollbarThemeData(
          // thumbVisibility: MaterialStatePropertyAll(true),
          // trackVisibility: MaterialStatePropertyAll(true),
          thumbColor: const MaterialStatePropertyAll(Colors.white),
          trackColor: MaterialStatePropertyAll(Colors.grey.shade800),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.white
        ),
        radioTheme: const RadioThemeData(
            fillColor: MaterialStatePropertyAll(Colors.white)
        ),
        cardTheme: CardTheme(
          color: Colors.grey.withOpacity(0.3),
          surfaceTintColor: Colors.grey.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )
          // surfaceTintColor: Colors.white,
        ),
        dividerTheme: DividerThemeData(
            color: Colors.grey.shade300
        ),
        listTileTheme: ListTileThemeData(
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )
        ),
        dividerColor: Colors.grey,
        dialogBackgroundColor: Colors.grey.shade800,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )
              ),
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              foregroundColor: const MaterialStatePropertyAll(Colors.black),
            )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  )
              ),
              side: const MaterialStatePropertyAll(
                BorderSide(color: Colors.white, width: 2.0),
              ),
              foregroundColor: const MaterialStatePropertyAll(
                  Colors.white
              )
          ),

        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(
                  Colors.white
              )
          ),

        ),

        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.amber,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            surfaceTintColor: Colors.black,
            elevation: 0,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0,),
            foregroundColor: Colors.white
        ),

        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          prefixIconColor: Colors.white,
          suffixIconColor: Colors.white
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          displayLarge: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Colors.white,
            refreshBackgroundColor: primaryColor
        ),
        cardColor: Colors.grey.withOpacity(0.3),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade400,
        showUnselectedLabels: true,

      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.grey.shade900,
        surfaceTintColor: Colors.grey.shade900,
        shadowColor: Colors.grey,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18)
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: Colors.grey.shade900,
        surfaceTintColor: Colors.grey.shade900,
        headerHeadlineStyle: const TextStyle(color: Colors.white),
        headerHelpStyle: const TextStyle(color: Colors.white),
        dayStyle: const TextStyle(color: Colors.white),
        rangePickerHeaderHeadlineStyle: const TextStyle(color: Colors.white),
        rangePickerHeaderHelpStyle: const TextStyle(color: Colors.white),
        headerForegroundColor: Colors.white,
        rangePickerHeaderForegroundColor: Colors.white,
        rangeSelectionBackgroundColor: Colors.white,
        yearStyle: const TextStyle(color: Colors.white),
        weekdayStyle: const TextStyle(color: Colors.white),
        dayForegroundColor: const MaterialStatePropertyAll(Colors.white),
        yearForegroundColor: const MaterialStatePropertyAll(Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          )
        )
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: Colors.grey.shade800,

      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.grey.shade800,
        modalBackgroundColor: Colors.grey.shade800,
      ),
      switchTheme: const SwitchThemeData(
        trackColor: MaterialStatePropertyAll(Colors.white)
      )
    );
  }
}