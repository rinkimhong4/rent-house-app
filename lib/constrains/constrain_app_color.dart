import 'package:flutter/material.dart';

class AppColors {
  // ================= LIGHT =================
  static const background = Color(0xFFF7F9FC);
  static const foreground = Color(0xFF0E1B26);

  static const card = Color(0xFFFFFFFF);
  static const cardForeground = Color(0xFF0E1B26);

  static const popover = Color(0xFFFFFFFF);
  static const popoverForeground = Color(0xFF0E1B26);

  static const primary = Color(0xFF2AAE96);
  static const primaryForeground = Color(0xFFFFFFFF);

  static const secondary = Color(0xFFF1F5F9);
  static const secondaryForeground = Color(0xFF0E1B26);

  static const muted = Color(0xFFE9EEF3);
  static const mutedForeground = Color(0xFF6B7C8F);

  static const accent = Color(0xFFF5A623);
  static const accentForeground = Color(0xFFFFFFFF);

  static const destructive = Color(0xFFE54848);
  static const destructiveForeground = Color(0xFFFFFFFF);

  static const success = Color(0xFF2ECC71);
  static const successForeground = Color(0xFFFFFFFF);

  static const warning = Color(0xFFF5A623);
  static const warningForeground = Color(0xFFFFFFFF);

  static const border = Color(0xFFE1E7EC);
  static const input = Color(0xFFE1E7EC);
  static const ring = Color(0xFF2AAE96);

  // Sidebar
  static const sidebarBackground = Color(0xFFFFFFFF);
  static const sidebarForeground = Color(0xFF0E1B26);
  static const sidebarPrimary = Color(0xFF2AAE96);
  static const sidebarPrimaryForeground = Color(0xFFFFFFFF);
  static const sidebarAccent = Color(0xFFF1F5F9);
  static const sidebarAccentForeground = Color(0xFF0E1B26);
  static const sidebarBorder = Color(0xFFE1E7EC);
  static const sidebarRing = Color(0xFF2AAE96);

  // ================= DARK =================
  static const darkBackground = Color(0xFF0B141C);
  static const darkForeground = Color(0xFFF7F9FC);

  static const darkCard = Color(0xFF14212D);
  static const darkCardForeground = Color(0xFFF7F9FC);

  static const darkPrimary = Color(0xFF33C2A6);
  static const darkSecondary = Color(0xFF223240);
  static const darkMuted = Color(0xFF223240);
  static const darkMutedForeground = Color(0xFF9FB0C0);

  static const darkAccent = Color(0xFFF7B733);
  static const darkDestructive = Color(0xFFEB5757);
  static const darkSuccess = Color(0xFF38D982);
  static const darkWarning = Color(0xFFF7B733);

  static const darkBorder = Color(0xFF2B3A47);
  static const darkRing = Color(0xFF33C2A6);

  static const darkSidebarBackground = Color(0xFF101B25);
}

class AppGradients {
  static const primary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.primary, Color(0xFF1F8A77)],
  );

  static const accent = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.accent, Color(0xFFE38B12)],
  );
  static const accent1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.success, Color(0xFF2ECC76)],
  );

  static const card = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFFFFFF), Color(0xFFFAFCFD)],
  );
}
