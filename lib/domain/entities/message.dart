// identidad atomica: la unidad mas pequeña  de un sistema
enum FromWho{me, him}

class Message {
  final String text;
  final String? imageUrls;
  final FromWho fromWho;

  Message({required this.text, this.imageUrls, required this.fromWho});
}