import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //6c
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      //Question 6
      //6b
      home: const MyHomePage(title: 'JC First App'),
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
  //Question 1
  String firstName = "";
  String lastName = "";
  int num1 = 0;
  double num2 = 0;
  var add1;
  bool? nameState;
  String? middleName;

  @override
  void initState() {
    super.initState();

    //create an instance of the Car class
    Car myCar = Car("Honda", "Civic", "Red");
    myCar.registrationInfo("ABC1234", "A001");
  }

  //Question 2
  void printText() {
    print("Hello, my name is $firstName $lastName");
  }

  //Question 3
  //3a
  // int getSum(int a, int b) {
  //   return a + b;
  // }

  //3b
  int getSum({required int a, int b = 10}) {
    return a + b;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //Question 5
  //5a & 5b
  String fullName(String firstName, String lastName, [String? middleName]) {
    if (middleName != null && middleName.isNotEmpty) {
      for (int i = 0; i < 5; i++) {
        print("Full Name: $firstName $middleName $lastName");
      }
      return "$firstName $middleName $lastName";
    } else {
      for (int i = 0; i < 3; i++) {
        print("Full Name: $firstName $lastName");
      }
      return "$firstName $lastName";
    }
  }

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
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            //Question 8
            Image.network(
              'https://static.wikia.nocookie.net/reddwarf/images/6/69/Ainsley_Harriott.jpg/revision/latest/scale-to-width-down/1000?cb=20180223100130',
              width: 300, // optional
              height: 300, // optional
              fit: BoxFit.cover, // optional
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

//Question 4
class Car {
  String carName = "";
  String carModel = "";
  String carColor = "";

  Car(this.carName, this.carModel, this.carColor);

  String registrationInfo(String numberPlate, String userID) {
    String info = '''
      Car Name: $carName
      Car Model: $carModel
      Car Colour: $carColor
      Number Plate: $numberPlate
      User ID: $userID
    ''';
    print(info);
    return info;
  }
}


// Question 7
// Determine whether the following syntax for a function is valid:

// a. int getSum(int a, int b) 
// Valid

// b. boolean checkVal(required bool c) 
// Invalid
// bool checkVal({required bool c})


// c. double getSum2({required int d, double e = 0.5}) 
// Valid

// d. String showText(String name = null, String name2 = ’Phantom’) 
// Invalid
// String showText([String? name, String name2 = 'Phantom'])

