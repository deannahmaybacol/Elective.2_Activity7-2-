import 'package:flutter/material.dart';

import 'custom_dialog.dart';

class CustomPopUp extends StatelessWidget {
  const CustomPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.8, -0.9),
      child: IconButton(
        iconSize: 40,
        icon: const Icon(Icons.info),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => const CustomDialog(),
          );
        },
        color: const Color(0xffdcffcc),
      ),
    );
  }
}
