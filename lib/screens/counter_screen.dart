import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  var colorGeneral = Colors.blue;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorGeneral,
        title: const Center(child: Text('CounterScreen')),
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
      floatingActionButton: CustomFloatingActions(
        increaseFN: increase,
        decreaseFN: decrease,
        resetFN: reset,
        colorN: colorGeneral,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFN;
  final Function decreaseFN;
  final Function resetFN;
  final Color colorN;

  const CustomFloatingActions({
    super.key,
    required this.increaseFN,
    required this.decreaseFN,
    required this.resetFN, 
    required this.colorN,
    
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: colorN,
          onPressed: () => decreaseFN(),
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: colorN,
          onPressed: () => resetFN(),
          child: const Icon(Icons.refresh),
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: colorN,
          onPressed: () => increaseFN(),
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
