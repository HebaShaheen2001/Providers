import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:providers/Screen/Api/Screen/categoriesModle.dart';
import 'package:providers/Screen/Api/api_setting.dart';
import 'package:http/http.dart' as http;

class Homeapi extends StatefulWidget {
  const Homeapi({super.key});

  @override
  State<Homeapi> createState() => _HomeapiState();
}

class _HomeapiState extends State<Homeapi> {
  //اول شي هان عملت ليست ومررت المودل فيها
  List<categoriesModel> categories = [];
  // هان متغير بحالة الانتظار
  bool isLoading = true;

// هان فنكشن لجزئية ال api وهان بنعمل الانتظار asyan
  Future<void> fetchCategories() async {
    // هان بنستخدم ال try catch عشان بحالة الاخطاء
    try {
      // هان بعرف الرابط وبستخدم مكتبة http لاعرف الرابط
      var url = Uri.parse(ApiSettings.home);
      var response = await http.get(url);

// شرط اذا كان نتيحة الريكوست 200 يعني نجاح بجيب الbody الي هي البيانات
      if (response.statusCode == 200) {
        var jsonBody = json.decode(response.body);
        // وعرفت ليست جوا حطيت فيها البيانات وحددت بيانات التصميفات فقط
        List data = jsonBody['categories'];
// هنا بعمل تحديث تلقائي وبعرف متغير حطيت فيها البيانات من الريكوست وربطتها بالمودل وملاحظة هان مش متاكدة من فهمي
        setState(() {
          categories = data.map((m) => categoriesModel.fromJson(m)).toList();
          // هان خليت اللانتظار حالته فولس اذا جاب البيانات يعني خلص بصير فولس
          isLoading = false;
        });
      } else {
        // هان بحالة صار خطا المفترض احط رسائل خطا
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      // وهان بحالة في خطا ما بحطه هان بخليها ليفحص الكود
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                var category = categories[index];

                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Text(category.name.toString()),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
