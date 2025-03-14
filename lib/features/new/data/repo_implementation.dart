import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../core/error/failure.dart';
import 'models/data_model.dart';
class RepoImplementation {
 Future<Either<Failure,List<DataModel>>> getData() async {
   var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
   List bodyJson = jsonDecode(response.body);
   try{
     if(response.statusCode == 200){
       List <DataModel> list = bodyJson.map((e) => DataModel.fromJson(e),).toList();
       return Right(list);
     }else{
       return Left(ApiFailure(message: "error"));
     }
   }catch(e){
     return Left(ApiFailure(message: "error"));
   }
 }
}