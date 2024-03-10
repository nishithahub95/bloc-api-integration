import 'dart:convert';
import 'dart:io';

import 'package:bloc_api_integration/model/post_model.dart';
import 'package:http/http.dart'as http;

class PostRepository{


  Future<List<PostModel>> fetchPost ()async{
try{
  final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
  if(response.statusCode==200){
    final body=jsonDecode(response.body) as List;
   return body.map((e) => PostModel(userId: e["postId"],
        title: e["title"],
        body: e["body"]

    )).toList();
  }

}on SocketException{
  throw Exception('Erroe while fetching data');
}

throw Exception('Erroe while fetching data');
  }
}