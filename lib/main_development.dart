import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lectometro/app/app.dart';
import 'package:lectometro/bootstrap.dart';
import 'package:lectometro/firebase_options.dart';

void main() {
  bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return EasyLocalization(
      supportedLocales: const [Locale('es')],
      path: 'assets/lang',
      fallbackLocale: const Locale('es'),
      child: const App(),
    );
  });
}
