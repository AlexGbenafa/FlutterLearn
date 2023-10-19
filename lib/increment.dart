import 'package:flutter/material.dart';
import 'decrement.dart';
import 'counter_model.dart';

class IncrementPage extends StatefulWidget {
  const IncrementPage({Key? key, required this.title, required this.counterModel}) : super(key: key);
  final String title;
  final CounterModel counterModel;

  @override
  _IncrementPageState createState() => _IncrementPageState();
}

class _IncrementPageState extends State<IncrementPage> {
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
              'Incrémentation',
            ),
            Text(
              '${widget.counterModel.counter}', // Utilisez la valeur du compteur du modèle.
              style: Theme.of(context).textTheme.headline6,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  widget.counterModel.increment(); // Incrémentez le compteur via la méthode du modèle.
                });
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DecrementPage(title: 'Page de Décrémentation', counterModel: widget.counterModel)),
                );
              },
              child: Text('Aller à la page de Décrémentation'),
            )
          ],
        ),
      ),
    );
  }
}
