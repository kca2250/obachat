import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:kansai_no_obachat/app.dart';
import 'package:kansai_no_obachat/firebase_options.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.deepOrange[400],
      systemNavigationBarColor: Colors.white,
    ),
  );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const App(),
  );
}
