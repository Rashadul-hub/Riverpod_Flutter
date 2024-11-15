import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/easyLevel/riverpod_easy.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              ///TODO: TO Show the value

            ref.watch(riverpodEasyLevel).toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
                onPressed: (){
                  ///TODO: TO Edit the value or change the value
                  ref.read(riverpodEasyLevel.notifier).state ++ ;
                },
              icon: Icon(Icons.add),
              label: Text('Add'),
            ),
            ElevatedButton.icon(onPressed: (){
              ///TODO : TO Edit the value or change the value
              ref.read(riverpodEasyLevel.notifier).state -- ;

            }, icon: Icon(Icons.remove),label: Text('Remove'),)
          ],
        ),
      ),
    );
  }
}
