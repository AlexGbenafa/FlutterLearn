class CounterModel {
  int counter = 0;

  void increment() {
    if (counter < 20) {
      counter++;
    } else {
      // Afficher le message
      print('La limite est atteinte. Vous devez décrémenter.');
    }
  }

  void decrement() {
    if (counter > 8) {
      counter--;
    } else {
      // Afficher le message
      print('La limite est atteinte. Vous devez incrémenter.');
    }
  }
}
