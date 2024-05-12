import 'package:ethanol_or_gasoline/widgets/input_widget.dart';
import 'package:ethanol_or_gasoline/widgets/loading_button_widget.dart';
import 'package:ethanol_or_gasoline/widgets/logo_widget.dart';
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
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Text(
                  "Compensa utilizar etanol",
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
                  onPressed: () {},
                  label: "CALCULAR NOVAMENTE",
                )
              ],
            ),
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
