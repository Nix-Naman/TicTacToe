import 'package:flutter/material.dart';

class PlayerCard extends StatelessWidget {
  final String name;
  final String img;
  final String avImg;
  const PlayerCard({
    Key? key,
    required this.name,
    required this.img,
    required this.avImg,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/$avImg.png"),
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 140, height: 8),
            Text(
              name,
              style: Theme.of(context).textTheme.headline6,
            ),
            Container(
              width: 80,
              child: Image.asset(
                "assets/images/$img.png",
              ),
            )
          ],
        ),
      ),
    );
  }
}
