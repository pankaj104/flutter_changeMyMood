import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Change my mood',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
  bool hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Change my mood'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: hasBeenPressed
                    ? Image.asset("assets/happiness.png")
                    : Image.asset("assets/sad.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasBeenPressed = !hasBeenPressed;
                      
                    });
                  },
                  child: hasBeenPressed
                      ? const Text('Make me Sad')
                      : const Text('Make me Happy'),
                ),
              ),
            ],
          ),
        )
        );
  }
  //print(Text('Text'));
}
