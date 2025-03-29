import 'package:flutter/material.dart';
import 'td_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1 portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

class GridTest extends StatelessWidget {
  const GridTest({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        //add scrollbar
        body: Scrollbar(
          thumbVisibility: true,
          child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(1000, (index) {
              final isEvenRow = (index ~/ 4) % 2 == 0;
              final isEvenColumn = (index % 4) % 2 == 0;
              final isEven = isEvenRow ? isEvenColumn : !isEvenColumn;
              final color = isEven ? Colors.amber : Colors.brown;

              return Container(
                color: color,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(Icons.star, size: 40, color: Colors.black),
                      // const SizedBox(height: 8),
                      // Text(
                      //   'Item $index',
                      //   style: Theme.of(context).textTheme.headlineSmall,
                      // ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class InClassPage extends StatelessWidget {
  const InClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 44,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            const SizedBox(width: 30),
            Icon(Icons.audiotrack, color: Colors.green, size: 40),
            const SizedBox(width: 30),
            Icon(Icons.beach_access, color: Colors.blue, size: 46),
          ],
        ),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //Logo and menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.class_, color: Colors.blue, size: 40),
                      const SizedBox(width: 8),
                      const Text(
                        'I4-GICB',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
                ],
              ),
              // const SizedBox(height: 10),

              //profile
              ClipOval(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('assets/'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.grey.shade200, width: 5),
                  ),
                ),
              ),
              const SizedBox(height: 10), //gap
              //welcome text
              const Text(
                'Welcome to my Portfolio Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),

              const Text(
                "Hi I'm",
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),
              // const SizedBox(height: 20),

              //name
              const Text(
                "Nann Koungkea",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),

              //role
              const Text(
                'Engineering Student',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              //description
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: const Text("Alert"),
                            content: const Text("Thanks you for hiring me!"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Hire Me!', style: TextStyle(fontSize: 18)),
                ),
              ),
              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: const Text("Alert"),
                            content: const Text("Downloading.....!"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(),
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Download CV',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.download, color: Colors.blue),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
