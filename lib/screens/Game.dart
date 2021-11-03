import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:xoxo/models/ai_board.dart';
import 'package:xoxo/models/simple_board.dart';
import 'package:xoxo/models/tictac_model.dart';
import 'package:xoxo/widgets/multiplayerScreen/playercard.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String arg = ModalRoute.of(context)!.settings.arguments.toString();
    final t = Provider.of<TicTac>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PlayerCard(
                      name: "Player 1",
                      img: 'x',
                      avImg: "av3",
                    ),
                    SizedBox(width: 15),
                    PlayerCard(
                        name: arg,
                        img: 'o',
                        avImg: (arg == "AI") ? "ai" : "av3"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: (arg == "AI")
                    ? AiBoard(ctx: context)
                    : SimpleBoard(
                        ctx: context,
                      ),
              ),
              ElevatedButton(
                onPressed: () {
                  t.clearBoard();
                  Navigator.pop(context);
                },
                child: Text("Back"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  fixedSize: MaterialStateProperty.all(Size(140, 40)),
                  backgroundColor: MaterialStateProperty.all(Colors.pink),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
