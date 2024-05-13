import 'package:flutter/material.dart';
import 'package:rive_animation_icon_test/homenavscreen.dart';
import 'package:rive_animation_icon_test/theme.dart';

import 'list_anim_rive_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        home: const HomeScreenNav(),
    );
  }
}
