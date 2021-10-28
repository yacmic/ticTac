import 'dart:math';

class Player {
  static const x = 'X';
  static const o = 'O';

  static List playerX = [];
  static List playerO = [];
}

class Game {
  void playGame(int index, String activePlayer) {
    if (activePlayer == 'X')
      Player.playerX.add(index);
    else
      Player.playerO.add(index);
  }

  checkWinner() {}

  Future<void> autoPlay(activePlayer) async {
    int index = 0;
    List<int> emptyCells = [];
    for (var i = 0; i < 9; i++) {
      if (!(Player.playerX.contains(i) || Player.playerO.contains(i)))
        emptyCells.add(i);
    }
    Random random = Random();
    int randomIndex = random.nextInt(emptyCells.length);

    index = emptyCells[randomIndex];
    playGame(index, activePlayer);
  }
}
