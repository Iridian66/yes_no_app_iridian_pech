

import 'package:dio/dio.dart';
import 'package:yes_no_app_iridian_pech/domain/entities/message.dart';

class GetYesNoAnswer {

  //Se crea instancia de la clase dio 
  //Para majera las peticiones de HTTP
  final _dio = Dio();
}




//Obtener la respuesta
Future<Message> getAnswer() async{
  //Almacenar la peticion GETen una variable 
  final response = await _dio.get('https://yesno.wtf/api');


  //Generar el error 
  throw UnimplementedError();
  
}