import 'package:flutter/material.dart';
import 'package:list_task/screens/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(249, 66, 66, 66),),
      home: const TodoListPage(),
    );
  }
}
