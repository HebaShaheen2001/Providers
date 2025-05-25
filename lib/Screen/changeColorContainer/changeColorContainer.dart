import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/changeColorContainer/changeColorClass.dart';
import 'package:providers/widget/main_button_widget.dart';
import 'package:providers/widget/main_text_filed_widget.dart';

class Changecolorcontainer extends StatefulWidget {
  const Changecolorcontainer({super.key});

  @override
  State<Changecolorcontainer> createState() => _ChangecolorcontainerState();
}

class _ChangecolorcontainerState extends State<Changecolorcontainer> {
  late TextEditingController name;
  late TextEditingController age;
  late TextEditingController length;
  late TextEditingController weight;

  @override
  void initState() {
    super.initState();
    name = TextEditingController();
    age = TextEditingController();
    length = TextEditingController();
    weight = TextEditingController();
  }

  @override
  void dispose() {
    name.dispose();
    age.dispose();
    length.dispose();
    weight.dispose();
    super.dispose();
  }

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
            MainButtonWidget(
              text: 'تغير الخصائص 1',
              onPressed: () {
                Box.changeBox(Colors.lightGreenAccent, 200, 200, 'هبة ',
                    BorderRadius.circular(20));
                Navigator.pushNamed(context, 'ShowScreen');
              },
            ),
            SizedBox(
              height: 13,
            ),
            MainButtonWidget(
              text: 'تغير الخصائص 2',
              onPressed: () {
                Box.changeBox(
                    Colors.indigo, 100, 100, 'عبد', BorderRadius.circular(50));
                Navigator.pushNamed(context, 'ShowScreen');
              },
            ),
            SizedBox(
              height: 13,
            ),
            MainButtonWidget(
              text: 'تغير الخصائص 3',
              onPressed: () {
                Box.changeBox(Colors.deepOrangeAccent, 80, 200, 'شاهين',
                    BorderRadius.circular(0));
                Navigator.pushNamed(context, 'ShowScreen');
              },
            ),
            SizedBox(
              height: 13,
            ),
            MainTextFiledWidget(
              hintText: 'الاسم ',
              controller: name,
            ),
            SizedBox(
              height: 13,
            ),
            MainTextFiledWidget(
              hintText: 'العمر ',
              controller: age,
            ),
            SizedBox(
              height: 13,
            ),
            MainTextFiledWidget(
              hintText: 'الطول ',
              controller: length,
            ),
            SizedBox(
              height: 13,
            ),
            MainTextFiledWidget(
              hintText: 'الوزن ',
              controller: weight,
            ),
            SizedBox(
              height: 13,
            ),
            MainButtonWidget(
              height: 50,
              width: 60,
              text: 'اضف',
              onPressed: () {
                Data.personData(
                  name.text,
                  age.text,
                  length.text,
                  weight.text,
                );

                // Box.changeBox(Colors.deepOrangeAccent, 250, 250, 'القائمة',
                //     BorderRadius.circular(0));

                Navigator.pushNamed(context, 'ShowScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
