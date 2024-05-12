// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ethanol_or_gasoline/widgets/loading_button_widget.dart';

class SuccessCardWidget extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const SuccessCardWidget({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 50),
          Text(
            label,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: "Big Shoulders Display",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          LoadingButtonWidget(
            isLoading: false,
            invertColors: true,
            onPressed: onPressed,
            label: "CALCULAR NOVAMENTE",
          )
        ],
      ),
    );
  }
}
