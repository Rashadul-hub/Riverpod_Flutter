import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/hardLevel/riverpod_hard.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text('Hard Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              ///TODO: TO Show the value

            ref.watch(riverPodHardLevel).counter.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              onPressed: (){
                ///TODO: TO Edit the value or change the value
                ref.read(riverPodHardLevel).addCounter() ;
              },
              icon: Icon(Icons.add),
              label: Text('Add'),
            ),
            ElevatedButton.icon(onPressed: (){
              ///TODO : TO Edit the value or change the value
              ref.read(riverPodHardLevel).removeCounter();

            }, icon: Icon(Icons.remove),label: Text('Remove'),)
          ],
        ),
      ),
    );
  }
}
