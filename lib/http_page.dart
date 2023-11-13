import 'package:flutter/material.dart';
import 'package:flutter_http_packages/service/todo_service.dart';

class HttpPage extends StatefulWidget {
  const HttpPage({super.key});

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  @override
  void initState() {
    super.initState();
    TodoService.getTodos();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Package'),
      ),
      body: Container(),
    );
  }
}
