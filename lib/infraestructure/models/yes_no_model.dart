// El modelo define que datos debe tener la aplicacion. ¿Cual es el concepto de MVC?: 
//( Patron del diseño de software) Modelo = datos informacion
//Vista:pantalla lo que vemos  , Controlador: logica como va funcionar 

import 'package:yes_no_app_iridian_pech/domain/entities/message.dart';

class YesNoModel {
    final String answer;
    final String forced;
    final String image;

    YesNoModel({
        required this.answer,
        required this.forced,
        required this.image,
    });

    factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
    );

    Message toMessageEntity() => Message(
      text: answer =='yes'
      ?'si'
      : answer == 'no'
      ? 'No'
      : 'Quizas',
       frowWho: FromWho.hers,
       //Sera el gif 
       imagenUrl: image);




   
}
