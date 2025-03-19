import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) async {
    await pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale('es')],
        path: 'assets/lang', // Carpeta de traducciones
        fallbackLocale: const Locale('es'),
        child: Builder(
          builder: (context) => MaterialApp(
            locale:
                context.locale, // Usa el idioma definido en EasyLocalization
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            home: widget,
          ),
        ),
      ),
    );
  }
}
