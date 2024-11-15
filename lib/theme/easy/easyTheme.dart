import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/theme/easy/riverpodThemeChange.dart';

class EasyTheme extends ConsumerWidget {
  const EasyTheme({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: (){

                  /// TODO : Change The Data / Context /Theme
                  ref.read(riverPodIsLight.notifier).state = true;

                },
                label: Text("Light"),
              icon: Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
                onPressed: (){

                  /// TODO : Change The Data / Context /Theme
                  ref.read(riverPodIsLight.notifier).state = false;

                },
                label: Text("Dark"),
              icon: Icon(Icons.dark_mode),
            )
          ],
        ),
      ),
    );
  }
}
