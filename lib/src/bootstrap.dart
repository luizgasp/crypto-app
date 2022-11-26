import 'package:flutter/cupertino.dart';
import 'dart:developer';

import 'package:dependencies_module/dependencies_module.dart';

import 'app_module.dart';
import 'app_widget.dart';

T tripleResolverCallback<T extends Object>() => Modular.get<T>();

Future<void> bootstrap() async {
  TripleObserver.addListener((triple) => log('Triple Observer: ${triple.runtimeType} ${triple.state}'));

  setTripleResolver(tripleResolverCallback);

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
