import 'package:flutter/material.dart';

import 'widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Recipe Book', home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var centerFloat = FloatingActionButtonLocation.centerFloat;
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Recipe Book'),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  'Recipe of the Day',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
      floatingActionButtonLocation: centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
