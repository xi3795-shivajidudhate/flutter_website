import 'package:flutter/material.dart';
import 'package:flutter_website/src/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fun) {
    runApp(const FlutterWebsite());
  });
}

class FlutterWebsite extends StatelessWidget {
  const FlutterWebsite({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Website'),
    );
  }
}
