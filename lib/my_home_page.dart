import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'GetX App Language',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('en', 'US'));
              }, child: const Text('English'),),
              const SizedBox(width: 20,),
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('bn', 'BD'));
              }, child: const Text('Bangla'),),
            ],
          ),
        ],
      ),

    );
  }
}
