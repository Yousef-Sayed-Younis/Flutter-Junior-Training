import 'package:flutter/material.dart';

import 'counter_logic.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(CounterLogic.counter.toString(), textScaler: const TextScaler.linear(3)),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [_buildCounterButton(sign: "+"), _buildCounterButton(sign: "-")],
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildCounterButton({required String sign}) =>
      ElevatedButton(onPressed: () => setState(() => CounterLogic.changeCounter(sign)), child: Text(sign));
}
