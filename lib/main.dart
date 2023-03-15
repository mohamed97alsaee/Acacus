import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: 
                Container(
                  width: size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 0.5),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(-5, 0),
                            blurRadius: 10)
                      ],
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)),
                )
                //  ClipRRect(
                //   borderRadius: BorderRadius.circular(20.0),
                //   child: Image.network(
                //     'https://tourslibya.com/wp-content/uploads/2018/01/libya-tours-jebel-acacaus-1.jpg',
                // width: size.width,
                // height: 200,
                //     fit: BoxFit.cover,
                //   ),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
