import 'package:flutter/material.dart';
import 'package:orleon/theme/colors.dart';

class OrleonThemeBuilder {
  static ThemeData build() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      accentColor: kOrleon50,
      primaryColor: kOrleon400,
      scaffoldBackgroundColor: kOrleon50,
      cardColor: kBackgroundWhite,
      textSelectionColor: kOrleon50,
      errorColor: kErrorRed,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: kOrleonAccent,
        textTheme: ButtonTextTheme.normal,
      ),
      primaryIconTheme: base.iconTheme.copyWith(color: kOrleon400),
      textTheme: _buildShrineTextTheme(base.textTheme),
      primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
      accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
      iconTheme: _customIconTheme(base.iconTheme),
    );
  }

  static IconThemeData _customIconTheme(IconThemeData original) {
    return original.copyWith(color: kOrleon400);
  }

  static TextTheme _buildShrineTextTheme(TextTheme base) {
    return base
        .copyWith(
          headline: base.headline.copyWith(
            fontWeight: FontWeight.w500,
          ),
          title: base.title.copyWith(fontSize: 22.0),
          caption: base.caption.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
          body2: base.body2.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        )
        .apply(
          fontFamily: 'EVILDEAD',
          displayColor: kSurfaceWhite,
          bodyColor: kSurfaceWhite,
        );
  }
}
