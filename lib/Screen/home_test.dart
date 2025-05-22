import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/incrementClass.dart';
import 'package:providers/Screen/numberscreen.dart';

class HomeTest extends StatefulWidget {
  const HomeTest({super.key});

  @override
  State<HomeTest> createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  @override
  Widget build(BuildContext context) {
    final numberCount = Provider.of<IncrementClass>(context);
    final colorProvider = Provider.of<BoxColor>(context);
    return Scaffold(
      backgroundColor: colorProvider.color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number:${numberCount.number}'),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Numberscreen(),
                      ));
                },
                child: const Text('انتقل'))
          ],
        ),
      ),
    );
  }
}
