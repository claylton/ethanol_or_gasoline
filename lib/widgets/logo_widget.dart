import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 60),
        Image.asset(
          'assets/images/eog-white.png',
          height: 80,
        ),
        const SizedBox(height: 10),
        const Text(
          'Saiba qual a melhor opção para abastecimento do seu carro',
          style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
