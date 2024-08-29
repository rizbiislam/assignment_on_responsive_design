import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Basics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Web Basics'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            /*const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HUMMING\nBIRD.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to the episodes page
                  },
                  child: const Text('Episodes'),
                ),
                const SizedBox(width: 32),
                TextButton(
                  onPressed: () {
                    // Navigate to the about page
                  },
                  child: const Text('About'),
                ),
              ],
            ),*/
            const SizedBox(height: 32),
            Row(
              children: [
                // Align the text to the left with margin
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 16.0),
                      child: const Text(
                        'HUMMING\nBIRD.',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text('Episodes'),
                    ),
                    const SizedBox(width: 32),
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text('About'),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 32),
            const Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            const Text(
              'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Navigate to the course page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              child: const Text('Join course', style: TextStyle(color: Colors.white)),
            ),

          ],
        ),
      ),
    );
  }
}