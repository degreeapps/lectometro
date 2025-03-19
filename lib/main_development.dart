import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lectometro/app/app.dart';
import 'package:lectometro/bootstrap.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();

    return EasyLocalization(
      supportedLocales: const [Locale('es')],
      path: 'assets/lang',
      fallbackLocale: const Locale('es'),
      child: const App(),
    );
  });
}
