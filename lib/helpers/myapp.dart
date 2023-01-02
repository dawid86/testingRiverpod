import 'package:flutter/material.dart';
import 'package:myapp/helpers/wrapper.dart';
import 'package:myapp/ui/pages/authenticate.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: const Authenticate(), //was Wrapper() but getting error 'owner!._debugCurrentBuildTarget == this': is not true.
    );
  }
}