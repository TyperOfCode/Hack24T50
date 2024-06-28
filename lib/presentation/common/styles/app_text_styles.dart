part of styles;

class AppThemeTextStyles {
  static TextStyle inputText = GoogleFonts.lato(
    color: AppThemeColors.text,
    fontSize: AppFontSizes.defaultSize,
    fontWeight: FontWeight.w300,
  );

  static TextStyle defaultText = GoogleFonts.lato(
    color: AppThemeColors.text,
    fontSize: AppFontSizes.defaultSize,
    fontWeight: FontWeight.w400,
  );

  static TextStyle buttonText = GoogleFonts.lato(
    color: AppThemeColors.text,
    fontSize: AppFontSizes.defaultSize,
    fontWeight: FontWeight.w500,
  );

  static TextStyle impactText = GoogleFonts.lato(
    color: AppThemeColors.primary,
    fontSize: AppFontSizes.defaultSize,
    fontWeight: FontWeight.w700,
  );

  static TextStyle titleText = GoogleFonts.lato(
    color: AppThemeColors.text,
    fontSize: AppFontSizes.titleSize,
    fontWeight: FontWeight.w600,
  );
}

class AppFontSizes {
  static const double footer = 10;
  static const double defaultSize = 14;
  static const double tileItem = 15;
  static const double header2Size = 15;
  static const double header1Size = 20;
  static const double titleSize = 26;
}
