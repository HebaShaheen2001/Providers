import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:providers/Screen/Api/Screen/homeModle.dart';
import 'package:providers/Screen/Api/api_setting.dart';
import 'package:http/http.dart' as http;

class Homeapi extends StatefulWidget {
  const Homeapi({super.key});

  @override
  State<Homeapi> createState() => _HomeapiState();
}

class _HomeapiState extends State<Homeapi> {
  List<categoriesModel> categories = [];
  bool isLoading = true;
  Future<void> fetchCategories() async {
    try {
      var url = Uri.parse(ApiSettings.home);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var jsonBody = json.decode(response.body);
        List data = jsonBody['categories'];

        setState(() {
          categories = data.map((m) => categoriesModel.fromJson(m)).toList();
          isLoading = false;
        });
      } else {
        print("Error: ${response.statusCode}");
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print("Exception: $e");
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
