import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_app/example/example.dart';
import 'package:responsive_app/size/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return const MaterialApp(
            debugShowCheckedModeBanner: false, home: Example());
      });
    });
  }
}
