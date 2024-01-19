import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    int counter = 0;
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text('HomeScreen')),
          elevation: 10.0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Numero de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30)
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.redAccent,
          onPressed: () => {
            counter++,
          },
          child: const Icon(Icons.add),
        ));
  }
}
