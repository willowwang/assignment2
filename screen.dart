import 'package:flutter/material.dart';
import 'main.dart';
class MyNextPage extends StatefulWidget {
  MyNextPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyNextPageState createState() => _MyNextPageState(); //one method lamda
}

class _MyNextPageState extends State<MyNextPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {  //most important method
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Fridge Tracker',
              style: Theme.of(context).textTheme.display1,
            ),
            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: 'my home page')),
                );
              },
              child: Text(
                "Login",
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage(title: 'my home page')),
                );
              },
              child: Text(
                "Signup",
              ),
            ),
//            Text(
//              'You have clicked the button this many times:',
//            ),
//            Text(
//              '$_counter' + ' Times',
//              style: Theme.of(context).textTheme.display1,
//            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//
//        onPressed: _incrementCounter,
//
//
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
