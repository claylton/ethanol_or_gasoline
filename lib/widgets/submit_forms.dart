// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ethanol_or_gasoline/widgets/input_widget.dart';
import 'package:ethanol_or_gasoline/widgets/loading_button_widget.dart';

class SubmitForms extends StatelessWidget {
  final bool isLoading;
  final Function()? onPressed;
  TextEditingController textEthanolEditingController = TextEditingController();
  TextEditingController textGasolineEditingController = TextEditingController();
  
  SubmitForms({
    Key? key,
    required this.isLoading,
    required this.textGasolineEditingController,
    required this.textEthanolEditingController,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: InputWidget(
            label: "Gasolina",
            textEditingController: textGasolineEditingController,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: InputWidget(
            label: "Etanol",
            textEditingController: textEthanolEditingController,
          ),
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
