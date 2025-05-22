import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/changeColorContainer/changeColorClass.dart';
import 'package:providers/widget/main_button_widget.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    final Box = Provider.of<ChangeClass>(context);
    final Data = Provider.of<DataYou>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: Box.hc,
                width: Box.wc,
                decoration:
                    BoxDecoration(color: Box.color, borderRadius: Box.border),
                child: Center(
                    child: Column(
                  children: [
                    Text(Box.title),
                  ],
                )),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            MainButtonWidget(
              text: ' تم',
              onPressed: () {
                Navigator.pushNamed(context, 'Changecolorcontainer');
              },
            ),
            SizedBox(
              height: 13,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                // scrollDirection: Axis.vertical,
                itemCount: Data.you.length,
                itemBuilder: (context, index) {
                  final person = Data.you[index];
                  return ListTile(
                    title: Text('الاسم: ${person['name']}'),
                    subtitle: Text(
                        'العمر: ${person['age']}, الطول: ${person['length']}, الوزن: ${person['weight']}'),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
