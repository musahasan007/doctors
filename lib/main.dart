import 'package:flutter/material.dart';
import 'doctorlist.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
        title: Text("Dashboard"),
      ),
      body:
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("images/muhft.jpg"),
      fit: BoxFit.cover,
      ),
      ),child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          primary: false,
          children: [
            InkWell(
              child: Container(
                height: 150,
                width: 150,
                color: Colors.black,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(

                      builder:(context)=>doctorlist()
                  ),
                );
              },
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.orange,
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              child: Icon(
                Icons.announcement_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),

      )
    );
  }
}
