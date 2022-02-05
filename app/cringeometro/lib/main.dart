import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cringeometro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cringeometro'),
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
  bool cringe = false;
  void cringeDetected() {
    setState(() {
      cringe = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by theD method above.

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: <Widget>[
            cringe ? const Text('CRINGE DETECTED',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            : const Text('everything is normal',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                  height: 200.0,
                  width: 200.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                onPressed:cringeDetected,
                tooltip: 'detects cringe',
                child: const CircleAvatar(
                  radius: 48, // Image radius
                  backgroundImage: NetworkImage("https://i.ibb.co/FBb2B1G/foto-martina.png"),
          )
        ),
        ),
       
      ),)
        
        
        ]
          
      ),
      
      
      ),
    );
  }
}
