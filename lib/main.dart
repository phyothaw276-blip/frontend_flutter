import 'package:flutter/material.dart';
import 'package:intern_trainning/screen/user_form.dart';
import 'package:intern_trainning/screen/user_table_with_api.dart';
void main() {
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const UserForm(),
    );
  }
}