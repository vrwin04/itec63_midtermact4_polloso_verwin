import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyMidtermApp(),
    ));

class MyMidtermApp extends StatelessWidget {
  const MyMidtermApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Polloso Program',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            fontFamily: 'Emaro',
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 19, 146, 36),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 255, 76),
                border: Border.all(color: const Color.fromARGB(255, 35, 155, 71), width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Verwin Polloso\n' 
                'BSIT 3-1\n'       
                'Silang, Cavite\n' 
                '0906-1234-980',    
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: 'Emaro',
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {}, 
        backgroundColor: const Color.fromARGB(255, 47, 238, 57),
        child: const Center(child: Icon(Icons.thumb_up)), 
      ),
    );
  }
}