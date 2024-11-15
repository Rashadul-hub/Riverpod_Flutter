import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/theme/easy/riverpodThemeChange.dart';
import 'package:riverpod_practice/theme/hard/riverpodData.dart';

class HardTheme extends ConsumerWidget {
  const HardTheme({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,

        title: Text('Hard Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: (){

                  /// TODO : Change The Data / Context /Theme
                   ref.read(riverpodIsLightHard).changeTheme(newBool: true);

                },
                label: Text("Light"),
              icon: Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
                onPressed: (){

                  /// TODO : Change The Data / Context /Theme
                  ref.read(riverpodIsLightHard).changeTheme(newBool: false);
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
