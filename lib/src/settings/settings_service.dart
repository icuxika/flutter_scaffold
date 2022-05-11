import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
  }

  /// Loads the User's preferred Locale from local or remote storage.
  Future<Locale> locale() async {
    var systemLocale = await findSystemLocale();
    return Future.value(Locale(systemLocale));
  }

  Future<void> updateLocale(Locale locale) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
  }

  Future<String> findSystemLocale() {
    try {
      Intl.systemLocale = Intl.canonicalizedLocale(Platform.localeName);
    } catch (e) {
      return Future.value("zh");
    }
    return Future.value(Intl.shortLocale(Intl.systemLocale));
  }
}
