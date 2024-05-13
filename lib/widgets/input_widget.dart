import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputWidget extends StatelessWidget {
  final MaskTextInputFormatter _maskTextInputFormatter = MaskTextInputFormatter(mask: '#,##');
  late final String label;
  TextEditingController textEditingController = TextEditingController();

  InputWidget({required this.label, required this.textEditingController, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Big Shoulders Display",
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextFormField(
            controller: textEditingController,
            inputFormatters: [_maskTextInputFormatter],
            keyboardType: TextInputType.number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: "Big Shoulders Display",
            ),
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
