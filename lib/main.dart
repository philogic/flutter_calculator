import 'package:flutter/material.dart';
import 'tabs/AdditionTab.dart';
import 'tabs/SubtractionTab.dart';
import 'tabs/MultiplicationTab.dart';
import 'tabs/DivisionTab.dart';
import 'tabs/PowerTab.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  AdditionTab additionTab = AdditionTab();
  SubtractionTab subtractionTab = SubtractionTab();
  MultiplicationTab multiplicationTab = MultiplicationTab();
  DivisionTab divisionTab = DivisionTab();
  PowerTab powerTab = PowerTab();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Addition'),
                Tab(text: 'Subtraction'),
                Tab(text: 'Multiplication'),
                Tab(text: 'Division'),
                Tab(text: 'Power')
              ],
            ),
            title: Text('Calculator'),
          ),
          body: TabBarView(
            children: <Widget>[
              additionTab,
              subtractionTab,
              multiplicationTab,
              divisionTab,
              powerTab
            ],
          )
        ),
      ),
    );
  }
}
