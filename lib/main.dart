import 'package:ethanol_or_gasoline/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etanol ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final MaskTextInputFormatter _maskTextInputFormatter = MaskTextInputFormatter(
    mask: '#,##',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          const LogoWidget(),
          Row(
            children: [
              Container(
                width: 100,
                alignment: Alignment.centerRight,
                child: const Text(
                  "Gasolina",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "Big Shoulders Display",
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  initialValue: "0,00",
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
          ),
        ],
      ),
    );
  }
}
