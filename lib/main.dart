import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/easyLevel/EasyPage.dart';
import 'package:riverpod_practice/theme/easy/easyTheme.dart';
import 'package:riverpod_practice/theme/easy/riverpodThemeChange.dart';
import 'package:riverpod_practice/theme/hard/hardTheme.dart';
import 'package:riverpod_practice/theme/hard/riverpodData.dart';

import 'hardLevel/HardPage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}


/// TODO : Change Theme
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    /// TODO : Change Theme Easy Method
    Brightness brightness =
        ref.watch(riverPodIsLight) ? Brightness.light : Brightness.dark;

    /// TODO : Change Theme Advance Method
    Brightness brightnessWithModel = ref.watch(riverpodIsLightHard).isLight ? Brightness.light : Brightness.dark;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          /// TODO : Change Theme Easy
          // brightness: brightness,
          /// TODO : Change Theme Advance
          brightness: brightnessWithModel,

        ),
        useMaterial3: true,
      ),
      // home: const EasyPage(),
      // home: const HardPage(),
      home: BottomNav(),
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _page = 0;
  final pages = [EasyPage(), HardPage(), EasyTheme(), HardTheme()];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _page,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Easy',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Hard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              label: 'Easy Theme',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_rounded),
              label: 'Hard Theme',
            ),
          ],
        ),
        body: pages[_page],
      ),
    );
  }
}
