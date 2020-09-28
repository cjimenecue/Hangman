class TxtProcessor {
  static String initGuessed(String keyword) {
    var guessedLetters = "";
    for (int i = 0; i < keyword.length; i++) {
      guessedLetters = "_ $guessedLetters";
    }
    return guessedLetters;
  }

  /*
   * #3. Se está probando una nueva letra? está en la lista de intentos?
   * Si la letra no está en [a-z] o [A-Z] será falso.
   * No es sensitivo a mayúsculas y minúsculas, la 'a' y la 'A' son igual.
   * SOLUCIONADO por @aetxabao
   */
  static bool isNewLetterInList(String letter, List<String> letterTrialList) {
    int c = letter.toUpperCase().codeUnitAt(0);
    if ((c < "A".codeUnitAt(0)) || ("Z".codeUnitAt(0) < c)) return false;
    var str = letterTrialList.join();
    return !str.toUpperCase().contains(letter.toUpperCase());
  }

  /*
   * #4. Comprobar si una letra está en una palabra.
   * SOLUCIONADO por @cjimenecue
   */
  static bool isLetterInWord(String letter, String word) {
    return word.toLowerCase().contains(letter.toLowerCase());
  }

  /*
   * #5. Las letras de la lista que estén en la palabra clave
   * deben ser representadas en las posiciones que aparecen en ella.
   * Si una letra no está en la lista se representará con guión bajo.
   * Entre las letras y los guiones hay un espacio para formatearlo.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "b u _ _ s e _ e"
   *SOLUCIONADO por @aechegoyenpdam1
   */
  static String guessedLetters(String keyword, List<String> letterTrialList) {
    String resultado;
    for(int i = 0; i < keyword.length; i++){
      for(int a = 0; j z letterTrialList.length ; j++){
        if(letterTrialList(a) == keyword(i)){
          resul += keyword(i) + "";
        }
        else{resultado += "_"}
      }
    }
    resultado =resultado.substring(0, resul.length - 1);
    return resultado;
  }

  /*
   * #6. Las letras que están en la lista pero no en la palabra clave
   * deben aparecer separadas por un espacio.
   * Ej. Si keyword = "bullseye" y la lista es ["a","b","i","s","t","e","u"]
   * devolverá "a i t"
   */
  static String missedLetters(String keyword, List<String> letterTrialList) {
    var missedLetters = "";
    // stub (está mal, incorpora todas las letras, era para ver cambios)
    for (int i = 0; i < letterTrialList.length; i++) {
      missedLetters = "$missedLetters ${letterTrialList[i]}";
    }
    return missedLetters;
  }
}

// // Para pruebas
// void main() {
//   // Pruebas #3
//   var letterTrialList = ["a", "b", "i", "s", "t", "e", "u"];
//   print(TxtProcessor.isNewLetterInList("a", letterTrialList));
//   print(TxtProcessor.isNewLetterInList("A", letterTrialList));
//   print(TxtProcessor.isNewLetterInList("5", letterTrialList));
//   print(TxtProcessor.isNewLetterInList(" ", letterTrialList));
//   print(TxtProcessor.isNewLetterInList("z", letterTrialList));
//   print(TxtProcessor.isNewLetterInList("Z", letterTrialList));
// }
