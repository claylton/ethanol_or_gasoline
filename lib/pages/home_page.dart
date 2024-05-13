// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ethanol_or_gasoline/widgets/logo_widget.dart';
import 'package:ethanol_or_gasoline/widgets/submit_forms.dart';
import 'package:ethanol_or_gasoline/widgets/success_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = false;
  bool _isSuccess = false;
  final TextEditingController _textEthanolEditingController = TextEditingController(text: "0,00");
  final TextEditingController _textGasolineEditingController = TextEditingController(text: "0,00");
  String _resultText = "Compensa utilizar X";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          const LogoWidget(),
          _isSuccess
              ? SuccessCardWidget(
                  label: _resultText,
                  onPressed: reset,
                )
              : SubmitForms(
                  isLoading: _isLoading,
                  textEthanolEditingController: _textEthanolEditingController,
                  textGasolineEditingController: _textGasolineEditingController,
                  onPressed: calculate,
                ),
        ],
      ),
    );
  }

  Future calculate() {
    double ethanolValue = double.parse(_textEthanolEditingController.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gasolineValue = double.parse(_textGasolineEditingController.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double result = ethanolValue / gasolineValue;

    setState(() {
      _isLoading = true;
      _isSuccess = false;
    });

    return Future.delayed(
      const Duration(seconds: 1),
      () => {
        setState(() {
          if (result >= 0.7) {
            _resultText = "Compensa utilizar Gasolina!";
          } else {
            _resultText = "Compensa utilizar Etanol!";
          }
          _isLoading = false;
          _isSuccess = true;
        })
      },
    );
  }

  reset () {
    setState(() {
      _textEthanolEditingController.text = "0,00";
      _textGasolineEditingController.text = "0,00";
      _isSuccess = false;
      _isLoading = false;
    });
  }
}
