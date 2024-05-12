// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ethanol_or_gasoline/widgets/input_widget.dart';
import 'package:ethanol_or_gasoline/widgets/loading_button_widget.dart';
import 'package:flutter/material.dart';

class SubmitForms extends StatelessWidget {
  final bool isLoading;
  final Function()? onPressed;

  const SubmitForms({
    Key? key,
    required this.isLoading,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: InputWidget(label: "Gasolina"),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: InputWidget(label: "Etanol"),
        ),
        const SizedBox(height: 25),
        LoadingButtonWidget(
          isLoading: isLoading,
          invertColors: false,
          onPressed: onPressed,
          label: "CALCULAR",
        )
      ],
    );
  }
}
