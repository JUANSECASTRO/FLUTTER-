import 'package:flutter/material.dart';
import 'resposive/desktop_body.dart';
import 'resposive/tablet_body.dart';
import 'resposive/mobil_body.dart';
import 'resposive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tabletBody: TabletScaffold(),
        desktopBody: DesktopScaffold(),
      ),
    );
  }
}