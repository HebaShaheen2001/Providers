import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/incrementClass.dart';
import 'package:providers/widget/main_text_filed_widget.dart';

class Numberscreen extends StatefulWidget {
  const Numberscreen({super.key});

  @override
  State<Numberscreen> createState() => _NumberscreenState();
}

class _NumberscreenState extends State<Numberscreen> {
  late TextEditingController name;

  @override
  void initState() {
    super.initState();
    name = TextEditingController();
  }

  @override
  void dispose() {
    name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final number = Provider.of<IncrementClass>(context);
    final colorProvider = Provider.of<BoxColor>(context);
    final names = Provider.of<ListName>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ElevatedButton(
          //     onPressed: () {
          //       colorProvider.changeColor(Colors.black);
          //     },
          //     child: const Text('اسود')),
          // ElevatedButton(
          //     onPressed: () {
          //       colorProvider.changeColor(Colors.blue);
          //     },
          //     child: Text('ازرق')),
          // ElevatedButton(
          //     onPressed: () {
          //       colorProvider.changeColor(Colors.red);
          //     },
          //     child: Text('احمر')),
          Divider(),
          Center(
            child: Column(
              children: [
                MainTextFiledWidget(
                  hintText: 'اضافة اسم للقائمة',
                  controller: name,
                  // onChanged: (name) {
                  //   names.addNames(name);
                  // },
                ),
                ElevatedButton(
                    onPressed: () {
                      final newName = name.text;

                      names.addNames(newName);
                    },
                    child: Text('اضافة')),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    itemCount: names.namesList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(names.namesList[index]),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          number.increment();
        },
      ),
    );
  }
}
