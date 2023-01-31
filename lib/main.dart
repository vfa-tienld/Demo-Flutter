import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  //DATA TYPE

  // Example 1: Integer type
  int age = 30;
  print("My age is $age");

  // Example 2: Double type
  double pi = 3.14;
  print("The value of pi is $pi");

  // Example 3: String type
  String name = "John Doe";
  print("My name is $name");

  // Example 4: Boolean type
  bool isTrue = true;
  print("The value is $isTrue");

  // Example 5: List type
  List<int> numbers = [1, 2, 3];
  print("The numbers are $numbers");

// while
  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }
// do while
  do {
    print(count);
    count++;
  } while (count < 5);

// if else , switch-case
  String fruit = "apple";
  switch (fruit) {
    case "apple":
      print("Apple is red.");
      break;
    case "banana":
      print("Banana is yellow.");
      break;
    default:
      if (fruit == "grape") {
        print("Grape is purple.");
      } else {
        print("Unknown fruit.");
      }
      break;
  }

  //Collections  (loop)
  List<String> fruits = ['apple', 'banana', 'grape'];
  fruits.forEach((fruit) => print(fruit));

//
  Map<String, int> scores = {
    'apple': 100,
    'banana': 200,
    'grape': 300,
  };
  scores.forEach((fruit, score) => print('$fruit: $score'));

//
  Set<String> fruits2 = {'apple', 'banana', 'grape'};
  fruits.forEach((fruits2) => print(fruits2));

//Null Safety

  String name1 = "John Doe";
  String? nickname1;

// This line will result in a compile-time error, as `name` is not-nullable.
  //name1 = null;

// This line is allowed, as `nickname` is nullable.
  nickname1 = null;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
