import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: const Color(0xffdcffcc),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: const <Widget>[
              Text(
                'Info',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'The Hi-Lo Card Game is one of\n'
                'the best casino games for new players\n'
                'to look at due to how simple it is to play.\n\n'
                'All you need to do is guess whether the\n'
                'next card(right) to be dealt will be higher\n'
                'or lower than the show card(left)\n\n'
                'The Card suits rankings are at: club(lowest), followed by \n'
                'diamonds, hearts, and spades (highest).\n\n'
                'Enjoy!\n',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
