import 'package:flutter/material.dart';
import 'increment.dart';
import 'counter_model.dart';

void main() {
  final counterModel = CounterModel(); // Créez une instance du modèle de données.
  runApp(MyApp(counterModel: counterModel));
}

class MyApp extends StatelessWidget {
  final CounterModel counterModel;

  MyApp({required this.counterModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: IncrementPage(title: 'Bienvenue sur la page d\'incrémentation', counterModel: counterModel),
    );
  }
}
