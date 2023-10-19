import 'package:flutter/material.dart';
import 'increment.dart';
import 'counter_model.dart';

class DecrementPage extends StatefulWidget {
  const DecrementPage({Key? key, required this.title, required this.counterModel}) : super(key: key);
  final String title;
  final CounterModel counterModel;

  @override
  _DecrementPageState createState() => _DecrementPageState();
}

class _DecrementPageState extends State<DecrementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Décrémentation',
            ),
            Text(
              '${widget.counterModel.counter}', // Utilisez la valeur du compteur du modèle.
              style: Theme.of(context).textTheme.headline6,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  widget.counterModel.decrement(); // Décrémentez le compteur via la méthode du modèle.
                });
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IncrementPage(title: 'Page d\'Incrémentation', counterModel: widget.counterModel)),
                );
              },
              child: Text('Aller à la page d\'Incrémentation'),
            )
          ],
        ),
      ),
    );
  }
}
