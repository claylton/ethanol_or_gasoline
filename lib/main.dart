import 'package:ethanol_or_gasoline/widgets/input_widget.dart';
import 'package:ethanol_or_gasoline/widgets/loading_button_widget.dart';
import 'package:ethanol_or_gasoline/widgets/logo_widget.dart';
import 'package:ethanol_or_gasoline/widgets/success_card_widget.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          const LogoWidget(),
          SuccessCardWidget(
            label: "Compensa utilizar X",
            onPressed: (){},
          ),
          InputWidget(label: "Gasolina"),
          InputWidget(label: "Etanol"),
          LoadingButtonWidget(
            isLoading: true,
            invertColors: false,
            onPressed: () {},
            label: "CALCULAR",
          )
        ],
      ),
    );
  }
}
