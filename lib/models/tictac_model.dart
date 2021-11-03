import 'package:flutter/material.dart';
import 'dart:math';

class TicTac extends ChangeNotifier {
  List<String> displayElement = ['', '', '', '', '', '', '', '', ''];
  int filledBoxes = 0;
  bool oTurn = false;
  var random = new Random();
  void tapped(int index) {
    if (oTurn && displayElement[index] == '') {
      displayElement[index] = 'o';
      filledBoxes++;
    } else if (!oTurn && displayElement[index] == '') {
      displayElement[index] = 'x';
      filledBoxes++;
    }
    oTurn = !oTurn;
    notifyListeners();
  }

  String checkWinner() {
    // Checking rows
    if (displayElement[0] == displayElement[1] &&
        displayElement[0] == displayElement[2] &&
        displayElement[0] != '') {
      return displayElement[0];
    }
    if (displayElement[3] == displayElement[4] &&
        displayElement[3] == displayElement[5] &&
        displayElement[3] != '') {
      return displayElement[3];
    }
    if (displayElement[6] == displayElement[7] &&
        displayElement[6] == displayElement[8] &&
        displayElement[6] != '') {
      return displayElement[6];
    }

    // Checking Column
    if (displayElement[0] == displayElement[3] &&
        displayElement[0] == displayElement[6] &&
        displayElement[0] != '') {
      return displayElement[0];
    }
    if (displayElement[1] == displayElement[4] &&
        displayElement[1] == displayElement[7] &&
        displayElement[1] != '') {
      return displayElement[1];
    }
    if (displayElement[2] == displayElement[5] &&
        displayElement[2] == displayElement[8] &&
        displayElement[2] != '') {
      return displayElement[2];
    }

    // Checking Diagonal
    if (displayElement[0] == displayElement[4] &&
        displayElement[0] == displayElement[8] &&
        displayElement[0] != '') {
      return displayElement[0];
    }
    if (displayElement[2] == displayElement[4] &&
        displayElement[2] == displayElement[6] &&
        displayElement[2] != '') {
      return displayElement[2];
    }
    return ' ';
  }

  String gameAi() {
    int aiMove = random.nextInt(9);
    if (filledBoxes == 9) {
      return checkWinner();
    }
    if (displayElement[aiMove] == '') {
      displayElement[aiMove] = 'o';
      filledBoxes++;
      oTurn = false;
    } else {
      gameAi();
    }
    notifyListeners();
    return checkWinner();
  }

  int genNum() {
    return random.nextInt(9);
  }

  void clearBoard() {
    for (int i = 0; i < 9; i++) {
      displayElement[i] = '';
    }
    filledBoxes = 0;
    oTurn = false;
    notifyListeners();
  }

  bool getimg(int index) {
    if (index == 0 || index == 2 || index == 4 || index == 6 || index == 8) {
      return true;
    } else {
      return false;
    }
  }
}
