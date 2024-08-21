import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/views/desktop_tablet_layout.dart';
import 'package:responsive_ui/views/mobile_layout.dart';
import 'package:responsive_ui/views/widgets/adaptive_layout.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        desktopAndTabletLayout: (context) => const DesktopAndTabletLayout(),
      ),
    );
  }
}
