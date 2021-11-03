import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xoxo/models/tictac_model.dart';

class WinDialog extends StatelessWidget {
  final String imgName;
  const WinDialog({
    Key? key,
    required this.imgName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tictac = Provider.of<TicTac>(context, listen: false);
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            (imgName == "d")
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Match Draw",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(fontSize: 40),
                      ),
                    ),
                  )
                : Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        height: 80,
                        child: Image.asset("assets/images/$imgName.png"),
                      ),
                      Text(
                        (imgName == 'ai')
                            ? "AI Wins."
                            : "Player $imgName wins.",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              onPressed: () {
                tictac.clearBoard();
                Navigator.pop(context);
              },
              child: Text(
                "Ok",
              ),
            )
          ],
        ),
      ),
    );
  }
}
