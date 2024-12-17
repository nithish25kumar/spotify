import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  // Update the theme and emit the new state
  void updateTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // Convert the stored string back into a ThemeMode enum
    final themeString = json['theme'] as String?;
    if (themeString == null) return ThemeMode.system;

    switch (themeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // Convert the ThemeMode into a string to be stored
    switch (state) {
      case ThemeMode.light:
        return {'theme': 'light'};
      case ThemeMode.dark:
        return {'theme': 'dark'};
      case ThemeMode.system:
      default:
        return {'theme': 'system'};
    }
  }
}
