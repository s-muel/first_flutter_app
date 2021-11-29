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
      theme: ThemeData(primarySwatch: Colors.amber),
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
      body: Column(
        children: [
          ListTile(
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
          ),
          // this is my listTile
          Card(
            elevation: 10,
            child: ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/profile1.jpg"),
              ),
              title: const Text("Samuella Essuman"),
              subtitle: Row(
                children: const [
                  Icon(Icons.done),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Please sir i am done"),
                ],
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text("11:30 AM"),
                    CircleAvatar(
                      radius: 10,
                      child: Text("5"),
                      backgroundColor: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewHome extends StatelessWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              title: Text("Samuel Essuma"),
              subtitle: Row(
                children: const [
                  Icon(Icons.done_all),
                  SizedBox(width: 10),
                  Text("Hello Buddy ")
                ],
              ),
            ),
          ],
        ));
  }
}
