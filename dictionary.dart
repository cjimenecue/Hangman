import 'dart:convert';
import 'dart:io';

class Dictionary {
  /*
   * #1. Se puede tener:
   * (1) una lista de palabras fija
   * (2) un fichero de texto con las palabras
   *     p.ej. descargado de https://random-word-api.herokuapp.com/all
   * (3) acceso a un service REST que devuelva una palabra aleatoria
   *     p.ej. https://random-word-api.herokuapp.com/word
   * La palabra devuelta debe ser aleatoria.
   */
  Future<String> obtainWord() async {
    Uri restUrl = Uri.parse("https://random-word-api.herokuapp.com/word");
    HttpClientRequest request = await new HttpClient().getUrl(restUrl);
    HttpClientResponse response = await request.close();
    Stream resStream = response.transform(utf8.decoder);
    String palabra = "";
    await for (var data in resStream) {
      palabra = palabra + data;
    }
    return palabra.substring(2, palabra.length - 2);
  }

  String makeRandomWord() {
    String palabra = "";
    obtainWord().then((value) => palabra = value);
    return palabra;
  }
}
