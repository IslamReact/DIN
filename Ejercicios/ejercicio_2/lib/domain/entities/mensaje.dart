enum Autor { yo, otro }


class Mensaje {
  String texto;
  String? imgURL;
  Autor autor;

  Mensaje({required this.texto, this.imgURL, required this.autor});
}