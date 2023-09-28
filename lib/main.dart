import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:the_internet_folks/src/controller/event_controller.dart';
import 'package:the_internet_folks/src/controller/event_search_controller.dart';
import 'package:the_internet_folks/src/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(EventsController());
    Get.put(EventSearchController(searchController: TextEditingController()));
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false ,
      home: HomePage(),
    );
  }
}