import 'dart:convert';

import 'package:flutter_http_packages/model/todo_model.dart';
import 'package:http/http.dart' as http;


class TodoService{

  static const _basicUrl ='https://jsonplaceholder.typicode.com/';

  static Future getTodos()async{
     var response = await http.get(Uri.parse('${_basicUrl}todos/1'));
     if(response.statusCode == 200){
       print(response.body);
       print(json.decode(response.body));
     }

  }

}