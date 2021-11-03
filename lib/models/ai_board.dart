import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xoxo/widgets/winner_dialog.dart';
import 'tictac_model.dart';

class AiBoard extends StatelessWidget {
  static String win = '';
  static bool isAi = false;
  final BuildContext ctx;
  AiBoard({
    Key? key,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 9,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Consumer<TicTac>(
            builder: (ctx, tic, _) => GestureDetector(
              onTap: () {
                tic.tapped(index);
                win = tic.gameAi();
                if ((win == 'x' || win == 'o') && tic.filledBoxes <= 9) {
                  showDialog(
                    context: ctx,
                    builder: (ctx) => WinDialog(
                      imgName: (win == 'x') ? win : "ai",
                    ),
                  );
                } else if (tic.filledBoxes == 9) {
                  showDialog(
                    context: context,
                    builder: (ctx) => WinDialog(imgName: "d"),
                  );
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.black12,
                child: Container(
                  child: (tic.displayElement[index] == '')
                      ? Text(" ")
                      : Image.asset(
                          "assets/images/${tic.displayElement[index]}.png"),
                ),
              ),
            ),
          );
        });
  }
}
