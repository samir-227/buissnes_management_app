import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// ═══════════════════════════════════════════════════════════════════════════
/// 🎨 LUXURY ELEGANCE THEME
/// Premium Business Aesthetic - Deep Navy + Champagne Gold
/// ═══════════════════════════════════════════════════════════════════════════
///
/// Design Philosophy:
/// - Sophisticated & Refined
/// - Warm Neutrals & Muted Accents
/// - Flat Design with Subtle Borders
/// - Typography: Playfair Display (Headings) + Inter (Body)
///
/// ═══════════════════════════════════════════════════════════════════════════

class AppTheme {
  AppTheme._();

  // ══════════════════════════════════════════════════════════════════════════
  // 🌟 LIGHT THEME PALETTE
  // ══════════════════════════════════════════════════════════════════════════

  // Primary - Deep Navy (Trust, Sophistication, Authority)
  static const Color primaryLight = Color(0xFF0F2942);
  static const Color primaryVariantLight = Color(0xFF1A365D);

  // Accent - Champagne Gold (Luxury, Premium, Excellence)
  static const Color accentLight = Color(0xFFD4AF37);
  static const Color accentSoftLight = Color(0xFFC9A961);

  // Semantic Colors
  static const Color successLight = Color(0xFF065F46); // Emerald
  static const Color warningLight = Color(0xFFB45309); // Bronze
  static const Color errorLight = Color(0xFF991B1B); // Deep Red

  // Backgrounds & Surfaces
  static const Color backgroundLight = Color(0xFFFAF8F5); // Warm Cream
  static const Color surfaceLight = Color(0xFFFFFEFC); // Pearl White
  static const Color surfaceElevatedLight = Color(0xFFFFFFFF);

  // Text Colors
  static const Color textPrimaryLight = Color(0xFF1C1917); // Rich Black
  static const Color textSecondaryLight = Color(0xFF57534E); // Warm Gray
  static const Color textTertiaryLight = Color(0xFF78716C); // Muted
  static const Color textDisabledLight = Color(0xFFA8A29E);

  // Borders & Dividers
  static const Color borderLight = Color(0xFFE7E5E4); // Stone
  static const Color borderSubtleLight = Color(0xFFF5F5F4);
  static const Color dividerLight = Color(0xFFD6D3D1);

  // Shadow
  static const Color shadowLight = Color(0x0D0F2942);

  // ══════════════════════════════════════════════════════════════════════════
  // 🌙 DARK THEME PALETTE - Refined & Sophisticated
  // ══════════════════════════════════════════════════════════════════════════

  // Backgrounds - Warm Rich Blacks
  static const Color backgroundDark = Color(0xFF0D0B09); // Warm Black
  static const Color surfaceDark = Color(0xFF1A1714); // Dark Espresso
  static const Color surfaceElevatedDark = Color(
    0xFF242018,
  ); // Elevated Charcoal

  // Primary - Muted Navy/Slate (Sophisticated)
  static const Color primaryDark = Color(0xFF8B9DC3); // Dusty Blue
  static const Color primaryVariantDark = Color(0xFFA3B4D1);

  // Accent - Antique Gold (Elegant, Not Flashy)
  static const Color accentDark = Color(0xFFCDB68E); // Antique Gold
  static const Color accentSoftDark = Color(0xFFB8A074); // Muted Champagne

  // Semantic Colors - Desaturated & Elegant
  static const Color successDark = Color(0xFF7BAE7F); // Sage Green
  static const Color warningDark = Color(0xFFD4A574); // Warm Sand
  static const Color errorDark = Color(0xFFCF8B8B); // Dusty Rose

  // Text - Soft Ivory (Not Pure White)
  static const Color textPrimaryDark = Color(0xFFF2EDE6); // Ivory
  static const Color textSecondaryDark = Color(0xFFB8B0A4); // Warm Gray
  static const Color textTertiaryDark = Color(0xFF8A8279); // Muted Stone
  static const Color textDisabledDark = Color(0xFF5C564E);

  // Borders - Subtle & Warm
  static const Color borderDark = Color(0xFF2E2A25); // Dark Warm
  static const Color borderSubtleDark = Color(0xFF1F1C18);
  static const Color dividerDark = Color(0xFF3D3830);

  // Shadow
  static const Color shadowDark = Color(0x40000000);

  // ══════════════════════════════════════════════════════════════════════════
  // ✨ LIGHT THEME
  // ══════════════════════════════════════════════════════════════════════════

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,

    // ── Color Scheme ────────────────────────────────────────
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primaryLight,
      onPrimary: Colors.white,
      primaryContainer: primaryLight.withOpacity(0.08),
      onPrimaryContainer: primaryLight,
      secondary: accentLight,
      onSecondary: Color(0xFF1C1917),
      secondaryContainer: accentLight.withOpacity(0.15),
      onSecondaryContainer: Color(0xFF78350F),
      tertiary: successLight,
      onTertiary: Colors.white,
      tertiaryContainer: successLight.withOpacity(0.1),
      onTertiaryContainer: successLight,
      error: errorLight,
      onError: Colors.white,
      surface: surfaceLight,
      onSurface: textPrimaryLight,
      onSurfaceVariant: textSecondaryLight,
      outline: borderLight,
      outlineVariant: borderSubtleLight,
      shadow: shadowLight,
      scrim: Color(0x33000000),
      inverseSurface: surfaceDark,
      onInverseSurface: textPrimaryDark,
      inversePrimary: primaryDark,
    ),

    scaffoldBackgroundColor: backgroundLight,
    cardColor: surfaceLight,
    dividerColor: dividerLight,

    // ── AppBar ──────────────────────────────────────────────
    appBarTheme: AppBarTheme(
      backgroundColor: surfaceLight,
      foregroundColor: textPrimaryLight,
      elevation: 0,
      scrolledUnderElevation: 1,
      shadowColor: shadowLight,
      centerTitle: false,
      titleTextStyle: GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: primaryLight,
        letterSpacing: 0.5,
      ),
      iconTheme: IconThemeData(color: primaryLight, size: 24),
      actionsIconTheme: IconThemeData(color: primaryLight, size: 24),
    ),

    // ── Card ────────────────────────────────────────────────
    cardTheme: CardThemeData(
      color: surfaceLight,
      elevation: 0,
      shadowColor: shadowLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: borderLight, width: 1),
      ),
      // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),

    // ── Bottom Navigation Bar ───────────────────────────────
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: surfaceLight,
      selectedItemColor: primaryLight,
      unselectedItemColor: textTertiaryLight,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),

    // ── Navigation Bar (Material 3) ─────────────────────────
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: surfaceLight,
      indicatorColor: accentLight.withOpacity(0.2),
      elevation: 0,
      height: 65,

      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: primaryLight, size: 24);
        }
        return IconThemeData(color: textTertiaryLight, size: 24);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: primaryLight,
          );
        }
        return GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textTertiaryLight,
        );
      }),
    ),

    // ── Navigation Rail ─────────────────────────────────────
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: surfaceLight,
      selectedIconTheme: IconThemeData(color: primaryLight, size: 24),
      unselectedIconTheme: IconThemeData(color: textTertiaryLight, size: 24),
      selectedLabelTextStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: primaryLight,
      ),
      unselectedLabelTextStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textTertiaryLight,
      ),
      indicatorColor: accentLight.withOpacity(0.2),
    ),

    // ── Floating Action Button ──────────────────────────────
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentLight,
      foregroundColor: Color(0xFF1C1917),
      elevation: 2,
      focusElevation: 4,
      hoverElevation: 4,
      highlightElevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    ),

    // ── Elevated Button ─────────────────────────────────────
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryLight,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    ),

    // ── Filled Button ───────────────────────────────────────
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    ),

    // ── Outlined Button ─────────────────────────────────────
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        minimumSize: const Size(64, 48),
        side: BorderSide(color: primaryLight.withOpacity(0.3), width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    ),

    // ── Text Button ─────────────────────────────────────────
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        minimumSize: const Size(64, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.2,
        ),
      ),
    ),

    // ── Icon Button ─────────────────────────────────────────
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: primaryLight,
        hoverColor: primaryLight.withOpacity(0.08),
        focusColor: primaryLight.withOpacity(0.12),
        highlightColor: primaryLight.withOpacity(0.12),
      ),
    ),

    // ── Input Decoration ────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      fillColor: surfaceElevatedLight,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: borderLight, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: borderLight, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: accentLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: errorLight, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: errorLight, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: borderSubtleLight, width: 1),
      ),
      labelStyle: GoogleFonts.inter(
        color: textSecondaryLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      floatingLabelStyle: GoogleFonts.inter(
        color: primaryLight,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: GoogleFonts.inter(
        color: textDisabledLight,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: GoogleFonts.inter(
        color: errorLight,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      helperStyle: GoogleFonts.inter(
        color: textTertiaryLight,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      prefixIconColor: textSecondaryLight,
      suffixIconColor: textSecondaryLight,
    ),

    // ── Dropdown Menu ───────────────────────────────────────
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: surfaceElevatedLight,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: borderLight, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: borderLight, width: 1),
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(surfaceElevatedLight),
        elevation: WidgetStateProperty.all(4),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: borderLight),
          ),
        ),
      ),
    ),

    // ── Popup Menu ──────────────────────────────────────────
    popupMenuTheme: PopupMenuThemeData(
      color: surfaceElevatedLight,
      elevation: 4,
      shadowColor: shadowLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: borderLight),
      ),
      textStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textPrimaryLight,
      ),
    ),

    // ── Menu ────────────────────────────────────────────────
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: WidgetStateProperty.all(surfaceElevatedLight),
        elevation: WidgetStateProperty.all(4),
        shadowColor: WidgetStateProperty.all(shadowLight),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: borderLight),
          ),
        ),
      ),
    ),

    // ── Menu Button ─────────────────────────────────────────
    menuButtonTheme: MenuButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return primaryLight.withOpacity(0.05);
          }
          return Colors.transparent;
        }),
        foregroundColor: WidgetStateProperty.all(textPrimaryLight),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    ),

    // ── Chip ────────────────────────────────────────────────
    chipTheme: ChipThemeData(
      backgroundColor: backgroundLight,
      selectedColor: accentLight.withOpacity(0.2),
      disabledColor: borderSubtleLight,
      labelStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: textPrimaryLight,
      ),
      secondaryLabelStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: primaryLight,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: borderLight),
      ),
      side: BorderSide(color: borderLight),
      checkmarkColor: primaryLight,
      deleteIconColor: textSecondaryLight,
    ),

    // ── Dialog ──────────────────────────────────────────────
    dialogTheme: DialogThemeData(
      backgroundColor: surfaceLight,
      elevation: 8,
      shadowColor: shadowLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      titleTextStyle: GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: primaryLight,
      ),
      contentTextStyle: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textSecondaryLight,
        height: 1.5,
      ),
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
    ),

    // ── Bottom Sheet ────────────────────────────────────────
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: surfaceLight,
      elevation: 0,
      modalElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      dragHandleColor: borderLight,
      dragHandleSize: Size(40, 4),
      showDragHandle: true,
    ),

    // ── SnackBar ────────────────────────────────────────────
    snackBarTheme: SnackBarThemeData(
      backgroundColor: primaryLight,
      contentTextStyle: GoogleFonts.inter(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      actionTextColor: accentLight,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 4,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),

    // ── Banner ──────────────────────────────────────────────
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: surfaceElevatedLight,
      contentTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textPrimaryLight,
      ),
      elevation: 0,
    ),

    // ── List Tile ───────────────────────────────────────────
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      titleTextStyle: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textPrimaryLight,
      ),
      subtitleTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textSecondaryLight,
      ),
      leadingAndTrailingTextStyle: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: accentLight,
      ),
      iconColor: textSecondaryLight,
      selectedColor: primaryLight,
      selectedTileColor: primaryLight.withOpacity(0.05),
      horizontalTitleGap: 16,
      minVerticalPadding: 8,
    ),

    // ── Divider ─────────────────────────────────────────────
    dividerTheme: DividerThemeData(color: dividerLight, thickness: 1, space: 1),

    // ── Tab Bar ─────────────────────────────────────────────
    tabBarTheme: TabBarThemeData(
      labelColor: primaryLight,
      unselectedLabelColor: textTertiaryLight,
      indicatorColor: accentLight,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: Colors.transparent,
      labelStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      overlayColor: WidgetStateProperty.all(primaryLight.withOpacity(0.05)),
    ),

    // ── Switch ──────────────────────────────────────────────
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentLight;
        }
        return textDisabledLight;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentLight.withOpacity(0.4);
        }
        return borderLight;
      }),
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    ),

    // ── Checkbox ────────────────────────────────────────────
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return primaryLight;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(Colors.white),
      side: BorderSide(color: borderLight, width: 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),

    // ── Radio ───────────────────────────────────────────────
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return primaryLight;
        }
        return textSecondaryLight;
      }),
    ),

    // ── Progress Indicator ──────────────────────────────────
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: accentLight,
      linearTrackColor: borderLight,
      circularTrackColor: borderLight,
      linearMinHeight: 4,
    ),

    // ── Slider ──────────────────────────────────────────────
    sliderTheme: SliderThemeData(
      activeTrackColor: accentLight,
      thumbColor: accentLight,
      overlayColor: accentLight.withOpacity(0.15),
      inactiveTrackColor: borderLight,
      valueIndicatorColor: primaryLight,
      valueIndicatorTextStyle: GoogleFonts.inter(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      trackHeight: 4,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
    ),

    // ── Tooltip ─────────────────────────────────────────────
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: primaryLight.withOpacity(0.95),
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: GoogleFonts.inter(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      waitDuration: const Duration(milliseconds: 500),
    ),

    // ── Badge ───────────────────────────────────────────────
    badgeTheme: BadgeThemeData(
      backgroundColor: errorLight,
      textColor: Colors.white,
      textStyle: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w600),
    ),

    // ── Date Picker ─────────────────────────────────────────
    datePickerTheme: DatePickerThemeData(
      backgroundColor: surfaceLight,
      headerBackgroundColor: primaryLight,
      headerForegroundColor: Colors.white,
      dayStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
      weekdayStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: textSecondaryLight,
      ),
      yearStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
      todayBorder: BorderSide(color: accentLight, width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ── Time Picker ─────────────────────────────────────────
    timePickerTheme: TimePickerThemeData(
      backgroundColor: surfaceLight,
      hourMinuteTextStyle: GoogleFonts.inter(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
      dayPeriodTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ── Search Bar ──────────────────────────────────────────
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(surfaceElevatedLight),
      elevation: WidgetStateProperty.all(0),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: borderLight),
        ),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: textPrimaryLight,
        ),
      ),
      hintStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: textDisabledLight,
        ),
      ),
    ),

    // ── Expansion Tile ──────────────────────────────────────
    expansionTileTheme: ExpansionTileThemeData(
      backgroundColor: Colors.transparent,
      collapsedBackgroundColor: Colors.transparent,
      tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      iconColor: textSecondaryLight,
      collapsedIconColor: textSecondaryLight,
      textColor: primaryLight,
      collapsedTextColor: textPrimaryLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    // ── Data Table ──────────────────────────────────────────
    dataTableTheme: DataTableThemeData(
      headingTextStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: textSecondaryLight,
      ),
      dataTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textPrimaryLight,
      ),
      headingRowColor: WidgetStateProperty.all(backgroundLight),
      dataRowColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return primaryLight.withOpacity(0.05);
        }
        if (states.contains(WidgetState.hovered)) {
          return primaryLight.withOpacity(0.03);
        }
        return Colors.transparent;
      }),
      dividerThickness: 1,
    ),

    // ── Icon Theme ──────────────────────────────────────────
    iconTheme: IconThemeData(color: textSecondaryLight, size: 24),

    primaryIconTheme: IconThemeData(color: primaryLight, size: 24),

    // ── Text Theme ──────────────────────────────────────────
    textTheme: _buildLuxuryTextTheme(isLight: true),

    // ── Primary Text Theme ──────────────────────────────────
    primaryTextTheme: _buildLuxuryTextTheme(isLight: true),
  );

  // ══════════════════════════════════════════════════════════════════════════
  // 🌙 DARK THEME
  // ══════════════════════════════════════════════════════════════════════════

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,

    // ── Color Scheme ────────────────────────────────────────
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: accentDark,
      onPrimary: backgroundDark,
      primaryContainer: accentDark.withOpacity(0.12),
      onPrimaryContainer: accentDark,
      secondary: primaryDark,
      onSecondary: backgroundDark,
      secondaryContainer: primaryDark.withOpacity(0.12),
      onSecondaryContainer: primaryDark,
      tertiary: successDark,
      onTertiary: backgroundDark,
      tertiaryContainer: successDark.withOpacity(0.12),
      onTertiaryContainer: successDark,
      error: errorDark,
      onError: backgroundDark,
      surface: surfaceDark,
      onSurface: textPrimaryDark,
      onSurfaceVariant: textSecondaryDark,
      outline: borderDark,
      outlineVariant: borderSubtleDark,
      shadow: shadowDark,
      scrim: Color(0x80000000),
      inverseSurface: surfaceLight,
      onInverseSurface: textPrimaryLight,
      inversePrimary: accentLight,
    ),

    scaffoldBackgroundColor: backgroundDark,
    cardColor: surfaceDark,
    dividerColor: dividerDark,

    // ── AppBar ──────────────────────────────────────────────
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundDark,
      foregroundColor: textPrimaryDark,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: textPrimaryDark,
        letterSpacing: 0.5,
      ),
      iconTheme: IconThemeData(color: textPrimaryDark, size: 24),
      actionsIconTheme: IconThemeData(color: textPrimaryDark, size: 24),
    ),

    // ── Card ────────────────────────────────────────────────
    cardTheme: CardThemeData(
      color: surfaceDark,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(color: borderDark, width: 1),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    ),

    // ── Bottom Navigation Bar ───────────────────────────────
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: surfaceDark,
      selectedItemColor: accentDark,
      unselectedItemColor: textTertiaryDark,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),

    // ── Navigation Bar (Material 3) ─────────────────────────
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: surfaceDark,
      indicatorColor: accentDark.withOpacity(0.15),
      elevation: 0,
      height: 65,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: accentDark, size: 24);
        }
        return IconThemeData(color: textTertiaryDark, size: 24);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: accentDark,
          );
        }
        return GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: textTertiaryDark,
        );
      }),
    ),

    // ── Navigation Rail ─────────────────────────────────────
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: surfaceDark,
      selectedIconTheme: IconThemeData(color: accentDark, size: 24),
      unselectedIconTheme: IconThemeData(color: textTertiaryDark, size: 24),
      selectedLabelTextStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: accentDark,
      ),
      unselectedLabelTextStyle: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textTertiaryDark,
      ),
      indicatorColor: accentDark.withOpacity(0.15),
    ),

    // ── Floating Action Button ──────────────────────────────
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: accentDark,
      foregroundColor: backgroundDark,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 2,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
    ),

    // ── Elevated Button ─────────────────────────────────────
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: backgroundDark,
        backgroundColor: accentDark,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    ),

    // ── Filled Button ───────────────────────────────────────
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        foregroundColor: backgroundDark,
        backgroundColor: accentDark,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        minimumSize: const Size(64, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    ),

    // ── Outlined Button ─────────────────────────────────────
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: textPrimaryDark,
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        minimumSize: const Size(64, 48),
        side: BorderSide(color: borderDark, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3,
        ),
      ),
    ),

    // ── Text Button ─────────────────────────────────────────
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: accentDark,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        minimumSize: const Size(64, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textStyle: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.2,
        ),
      ),
    ),

    // ── Icon Button ─────────────────────────────────────────
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: textPrimaryDark,
        hoverColor: accentDark.withOpacity(0.08),
        focusColor: accentDark.withOpacity(0.12),
        highlightColor: accentDark.withOpacity(0.12),
      ),
    ),

    // ── Input Decoration ────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      fillColor: surfaceElevatedDark,
      filled: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: accentDark, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: errorDark, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: errorDark, width: 1.5),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide.none,
      ),
      labelStyle: GoogleFonts.inter(
        color: textSecondaryDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      floatingLabelStyle: GoogleFonts.inter(
        color: accentDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: GoogleFonts.inter(
        color: textTertiaryDark,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: GoogleFonts.inter(
        color: errorDark,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      helperStyle: GoogleFonts.inter(
        color: textTertiaryDark,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      prefixIconColor: textSecondaryDark,
      suffixIconColor: textSecondaryDark,
    ),

    // ── Dropdown Menu ───────────────────────────────────────
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: InputDecorationTheme(
        fillColor: surfaceElevatedDark,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(surfaceElevatedDark),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: borderDark),
          ),
        ),
      ),
    ),

    // ── Popup Menu ──────────────────────────────────────────
    popupMenuTheme: PopupMenuThemeData(
      color: surfaceElevatedDark,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: borderDark),
      ),
      textStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textPrimaryDark,
      ),
    ),

    // ── Menu ────────────────────────────────────────────────
    menuTheme: MenuThemeData(
      style: MenuStyle(
        backgroundColor: WidgetStateProperty.all(surfaceElevatedDark),
        elevation: WidgetStateProperty.all(0),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side: BorderSide(color: borderDark),
          ),
        ),
      ),
    ),

    // ── Menu Button ─────────────────────────────────────────
    menuButtonTheme: MenuButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return accentDark.withOpacity(0.08);
          }
          return Colors.transparent;
        }),
        foregroundColor: WidgetStateProperty.all(textPrimaryDark),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    ),

    // ── Chip ────────────────────────────────────────────────
    chipTheme: ChipThemeData(
      backgroundColor: surfaceElevatedDark,
      selectedColor: accentDark.withOpacity(0.2),
      disabledColor: borderSubtleDark,
      labelStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: textPrimaryDark,
      ),
      secondaryLabelStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: accentDark,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide.none,
      ),
      side: BorderSide.none,
      checkmarkColor: accentDark,
      deleteIconColor: textSecondaryDark,
    ),

    // ── Dialog ──────────────────────────────────────────────
    dialogTheme: DialogThemeData(
      backgroundColor: surfaceDark,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(color: borderDark, width: 1),
      ),
      titleTextStyle: GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: textPrimaryDark,
      ),
      contentTextStyle: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: textSecondaryDark,
        height: 1.5,
      ),
      actionsPadding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
    ),

    // ── Bottom Sheet ────────────────────────────────────────
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: surfaceDark,
      elevation: 0,
      modalElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      dragHandleColor: borderDark,
      dragHandleSize: Size(40, 4),
      showDragHandle: true,
    ),

    // ── SnackBar ────────────────────────────────────────────
    snackBarTheme: SnackBarThemeData(
      backgroundColor: surfaceElevatedDark,
      contentTextStyle: GoogleFonts.inter(
        color: textPrimaryDark,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      actionTextColor: accentDark,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    ),

    // ── Banner ──────────────────────────────────────────────
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: surfaceElevatedDark,
      contentTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textPrimaryDark,
      ),
      elevation: 0,
    ),

    // ── List Tile ───────────────────────────────────────────
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      titleTextStyle: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: textPrimaryDark,
      ),
      subtitleTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textSecondaryDark,
      ),
      leadingAndTrailingTextStyle: GoogleFonts.inter(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: accentDark,
      ),
      iconColor: textSecondaryDark,
      selectedColor: accentDark,
      selectedTileColor: accentDark.withOpacity(0.08),
      horizontalTitleGap: 16,
      minVerticalPadding: 8,
    ),

    // ── Divider ─────────────────────────────────────────────
    dividerTheme: DividerThemeData(color: dividerDark, thickness: 1, space: 1),

    // ── Tab Bar ─────────────────────────────────────────────
    tabBarTheme: TabBarThemeData(
      labelColor: accentDark,
      unselectedLabelColor: textTertiaryDark,
      indicatorColor: accentDark,
      indicatorSize: TabBarIndicatorSize.label,
      dividerColor: Colors.transparent,
      labelStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
      unselectedLabelStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      overlayColor: WidgetStateProperty.all(accentDark.withOpacity(0.08)),
    ),

    // ── Switch ──────────────────────────────────────────────
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentDark;
        }
        return textTertiaryDark;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentDark.withOpacity(0.3);
        }
        return borderDark;
      }),
      trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
    ),

    // ── Checkbox ────────────────────────────────────────────
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentDark;
        }
        return Colors.transparent;
      }),
      checkColor: WidgetStateProperty.all(backgroundDark),
      side: BorderSide(color: borderDark, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),

    // ── Radio ───────────────────────────────────────────────
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentDark;
        }
        return textTertiaryDark;
      }),
    ),

    // ── Progress Indicator ──────────────────────────────────
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: accentDark,
      linearTrackColor: borderDark,
      circularTrackColor: borderDark,
      linearMinHeight: 4,
    ),

    // ── Slider ──────────────────────────────────────────────
    sliderTheme: SliderThemeData(
      activeTrackColor: accentDark,
      thumbColor: accentDark,
      overlayColor: accentDark.withOpacity(0.1),
      inactiveTrackColor: borderDark,
      valueIndicatorColor: accentDark,
      valueIndicatorTextStyle: GoogleFonts.inter(
        color: backgroundDark,
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      trackHeight: 4,
      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8),
    ),

    // ── Tooltip ─────────────────────────────────────────────
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: surfaceElevatedDark,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderDark),
      ),
      textStyle: GoogleFonts.inter(
        color: textPrimaryDark,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      waitDuration: const Duration(milliseconds: 500),
    ),

    // ── Badge ───────────────────────────────────────────────
    badgeTheme: BadgeThemeData(
      backgroundColor: errorDark,
      textColor: backgroundDark,
      textStyle: GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w600),
    ),

    // ── Date Picker ─────────────────────────────────────────
    datePickerTheme: DatePickerThemeData(
      backgroundColor: surfaceDark,
      headerBackgroundColor: surfaceElevatedDark,
      headerForegroundColor: textPrimaryDark,
      dayStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
      weekdayStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: textSecondaryDark,
      ),
      yearStyle: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w500),
      todayBorder: BorderSide(color: accentDark, width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ── Time Picker ─────────────────────────────────────────
    timePickerTheme: TimePickerThemeData(
      backgroundColor: surfaceDark,
      hourMinuteTextStyle: GoogleFonts.inter(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
      dayPeriodTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // ── Search Bar ──────────────────────────────────────────
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(surfaceElevatedDark),
      elevation: WidgetStateProperty.all(0),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 16),
      ),
      textStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: textPrimaryDark,
        ),
      ),
      hintStyle: WidgetStateProperty.all(
        GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: textTertiaryDark,
        ),
      ),
    ),

    // ── Expansion Tile ──────────────────────────────────────
    expansionTileTheme: ExpansionTileThemeData(
      backgroundColor: Colors.transparent,
      collapsedBackgroundColor: Colors.transparent,
      tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      iconColor: textSecondaryDark,
      collapsedIconColor: textSecondaryDark,
      textColor: accentDark,
      collapsedTextColor: textPrimaryDark,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),

    // ── Data Table ──────────────────────────────────────────
    dataTableTheme: DataTableThemeData(
      headingTextStyle: GoogleFonts.inter(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: textSecondaryDark,
      ),
      dataTextStyle: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textPrimaryDark,
      ),
      headingRowColor: WidgetStateProperty.all(surfaceElevatedDark),
      dataRowColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return accentDark.withOpacity(0.08);
        }
        if (states.contains(WidgetState.hovered)) {
          return accentDark.withOpacity(0.04);
        }
        return Colors.transparent;
      }),
      dividerThickness: 1,
    ),

    // ── Icon Theme ──────────────────────────────────────────
    iconTheme: IconThemeData(color: textSecondaryDark, size: 24),

    primaryIconTheme: IconThemeData(color: accentDark, size: 24),

    // ── Text Theme ──────────────────────────────────────────
    textTheme: _buildLuxuryTextTheme(isLight: false),

    // ── Primary Text Theme ──────────────────────────────────
    primaryTextTheme: _buildLuxuryTextTheme(isLight: false),
  );

  // ══════════════════════════════════════════════════════════════════════════
  // 📝 TYPOGRAPHY
  // ══════════════════════════════════════════════════════════════════════════

  /// Builds text theme with Playfair Display for headings and Inter for body
  static TextTheme _buildLuxuryTextTheme({required bool isLight}) {
    final Color textHigh = isLight ? textPrimaryLight : textPrimaryDark;
    final Color textMedium = isLight ? textSecondaryLight : textSecondaryDark;
    final Color textLow = isLight ? textTertiaryLight : textTertiaryDark;

    return TextTheme(
      // Display - Playfair Display (Editorial Luxury)
      displayLarge: GoogleFonts.playfairDisplay(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: textHigh,
        letterSpacing: -0.5,
        height: 1.12,
      ),
      displayMedium: GoogleFonts.playfairDisplay(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: textHigh,
        letterSpacing: -0.25,
        height: 1.16,
      ),
      displaySmall: GoogleFonts.playfairDisplay(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: textHigh,
        letterSpacing: 0,
        height: 1.22,
      ),

      // Headline - Playfair Display
      headlineLarge: GoogleFonts.playfairDisplay(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0,
        height: 1.25,
      ),
      headlineMedium: GoogleFonts.playfairDisplay(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0,
        height: 1.29,
      ),
      headlineSmall: GoogleFonts.playfairDisplay(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0,
        height: 1.33,
      ),

      // Title - Mixed
      titleLarge: GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0,
        height: 1.27,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0.15,
        height: 1.5,
      ),
      titleSmall: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0.1,
        height: 1.43,
      ),

      // Body - Inter (Clean & Readable)
      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: textHigh,
        letterSpacing: 0.25,
        height: 1.5,
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: textHigh,
        letterSpacing: 0.25,
        height: 1.43,
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: textMedium,
        letterSpacing: 0.4,
        height: 1.33,
      ),

      // Label - Inter
      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: textHigh,
        letterSpacing: 0.1,
        height: 1.43,
      ),
      labelMedium: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: textMedium,
        letterSpacing: 0.5,
        height: 1.33,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: textLow,
        letterSpacing: 0.5,
        height: 1.45,
      ),
    );
  }

  // ══════════════════════════════════════════════════════════════════════════
  // 🎯 HELPER METHODS & EXTENSIONS
  // ══════════════════════════════════════════════════════════════════════════

  /// Get semantic color for order status
  static Color getOrderStatusColor(String status, {required bool isDark}) {
    switch (status.toLowerCase()) {
      case 'new':
      case 'جديد':
        return isDark ? primaryDark : primaryLight;
      case 'preparing':
      case 'قيد التجهيز':
        return isDark ? warningDark : warningLight;
      case 'shipped':
      case 'تم الشحن':
        return isDark ? accentDark : accentLight;
      case 'delivered':
      case 'تم التسليم':
        return isDark ? successDark : successLight;
      case 'canceled':
      case 'ملغي':
      case 'returned':
      case 'مرتجع':
        return isDark ? errorDark : errorLight;
      default:
        return isDark ? textSecondaryDark : textSecondaryLight;
    }
  }

  /// Get semantic color for payment status
  static Color getPaymentStatusColor(String status, {required bool isDark}) {
    switch (status.toLowerCase()) {
      case 'paid':
      case 'مدفوع':
        return isDark ? successDark : successLight;
      case 'partial':
      case 'جزئي':
        return isDark ? warningDark : warningLight;
      case 'unpaid':
      case 'غير مدفوع':
        return isDark ? errorDark : errorLight;
      default:
        return isDark ? textSecondaryDark : textSecondaryLight;
    }
  }

  /// Get semantic color for stock level
  static Color getStockLevelColor(int quantity, {required bool isDark}) {
    if (quantity <= 0) {
      return isDark ? errorDark : errorLight;
    } else if (quantity <= 5) {
      return isDark ? warningDark : warningLight;
    } else {
      return isDark ? successDark : successLight;
    }
  }

  /// Premium gradient for special elements
  static LinearGradient get premiumGradientLight => LinearGradient(
    colors: [primaryLight, Color(0xFF1E3A5F)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient get premiumGradientDark => LinearGradient(
    colors: [surfaceElevatedDark, surfaceDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Gold gradient for accents
  static LinearGradient get goldGradient => LinearGradient(
    colors: [Color(0xFFD4AF37), Color(0xFFE8C547), Color(0xFFD4AF37)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  /// Card decoration with subtle border
  static BoxDecoration cardDecoration({required bool isDark}) {
    return BoxDecoration(
      color: isDark ? surfaceDark : surfaceLight,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: isDark ? borderDark : borderLight, width: 1),
    );
  }

  /// Elevated card decoration
  static BoxDecoration elevatedCardDecoration({required bool isDark}) {
    return BoxDecoration(
      color: isDark ? surfaceElevatedDark : surfaceElevatedLight,
      borderRadius: BorderRadius.circular(16),
      boxShadow: isDark
          ? []
          : [
              BoxShadow(
                color: shadowLight,
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// 📐 SPACING CONSTANTS
// ══════════════════════════════════════════════════════════════════════════════

class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;

  static const EdgeInsets paddingXs = EdgeInsets.all(xs);
  static const EdgeInsets paddingSm = EdgeInsets.all(sm);
  static const EdgeInsets paddingMd = EdgeInsets.all(md);
  static const EdgeInsets paddingLg = EdgeInsets.all(lg);
  static const EdgeInsets paddingXl = EdgeInsets.all(xl);

  static const EdgeInsets horizontalSm = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(horizontal: lg);

  static const EdgeInsets verticalSm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets verticalMd = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets verticalLg = EdgeInsets.symmetric(vertical: lg);

  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: md,
    vertical: lg,
  );
}

// ══════════════════════════════════════════════════════════════════════════════
// 📐 BORDER RADIUS CONSTANTS
// ══════════════════════════════════════════════════════════════════════════════

class AppRadius {
  AppRadius._();

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double round = 100.0;

  static const BorderRadius borderXs = BorderRadius.all(Radius.circular(xs));
  static const BorderRadius borderSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius borderMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius borderLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius borderXl = BorderRadius.all(Radius.circular(xl));
  static const BorderRadius borderRound = BorderRadius.all(
    Radius.circular(round),
  );
}

// ══════════════════════════════════════════════════════════════════════════════
// ⏱️ ANIMATION DURATIONS
// ══════════════════════════════════════════════════════════════════════════════

class AppDurations {
  AppDurations._();

  static const Duration fastest = Duration(milliseconds: 100);
  static const Duration fast = Duration(milliseconds: 200);
  static const Duration medium = Duration(milliseconds: 300);
  static const Duration slow = Duration(milliseconds: 400);
  static const Duration slowest = Duration(milliseconds: 500);
}
