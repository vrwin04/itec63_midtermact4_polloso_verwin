import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: MyMidtermApp(),
      debugShowCheckedModeBanner: false, // Removes the debug banner
    ));

class MyMidtermApp extends StatelessWidget {
  const MyMidtermApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Get the current window/screen size
    final screenSize = MediaQuery.of(context).size;

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
        backgroundColor: Colors.purple[700],
      ),
      
      // 2. Wrap the body in SingleChildScrollView to prevent overflow
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 3. Make the image responsive using ConstrainedBox
                ConstrainedBox(
                  constraints: BoxConstraints(
                    // Image height will take up 40% of screen, but cap at 300px
                    maxHeight: screenSize.height * 0.4 > 300 
                        ? 300 
                        : screenSize.height * 0.4,
                  ),
                  child: Image.asset(
                    'assets/images/jeffrey.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                
                // 4. Make the text container responsive
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  padding: const EdgeInsets.all(15.0),
                  // Set a max width so it doesn't stretch too wide on desktop
                  constraints: const BoxConstraints(maxWidth: 400),
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    border: Border.all(color: Colors.purple, width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'Verwin Polloso\n'
                    'BSIT 3-1\n'
                    'Silang, Cavite\n'
                    '0906-1234-980',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26.0, // Scaled down slightly to fit smaller windows
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
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purple[700],
        child: const Center(child: Icon(Icons.thumb_up)),
      ),
    );
  }
}