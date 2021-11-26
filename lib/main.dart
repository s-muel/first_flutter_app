import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => MyApp(), // Wrap your app
//     ),
//   );
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Sam's Application"),
      ),
      body: Center(
          child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/profile.jpg"),
        ),
        title: const Text("Solomon"),
        subtitle: Row(
          children: const [
            Icon(Icons.done_all),
            SizedBox(
              width: 10,
            ),
            Text("Hello send me the food")
          ],
        ),
        trailing: Column(
          children: const [Text("5:30"), Icon(Icons.notifications)],
        ),
      )),
    );
  }
}




