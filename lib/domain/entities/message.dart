// Identidad a tomica: la unidad mas pequeña de un sistema
enum FromWho{me, hers}
class Message {
final String text;
final String? imagenUrl;
final FromWho frowWho;

  Message({required this.text, this.imagenUrl, required this.frowWho}); 
}