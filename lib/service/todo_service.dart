import 'dart:convert';

import 'package:flutter_http_packages/model/todo_model.dart';
import 'package:http/http.dart' as http;


class TodoService{

  static const _basicUrl ='https://jsonplaceholder.typicode.com/';

  static Future getTodos()async{
    var tempList = [];
    var response = await http.get(Uri.parse('${_basicUrl}todos'));
    if(response.statusCode == 200){
      var jsonData = json.decode(response.body);
      for (var item in jsonData){
        tempList.add(item);
      }
      print(tempList[0]['userId']);


     }else{
       print(response.body);
       print(response.statusCode);
     }


  }

}