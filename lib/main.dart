// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Piranti Bergerak"),
//           ),
//           body: const Text("Aplikasi Flutter Pertama saya")),
//     );
//   }
// }

// class ChangeTimeWidget extends StatefulWidget {
//   const ChangeTimeWidget({super.key});

//   @override
//   State<ChangeTimeWidget> createState() => _ChangeTimeWidgetState();
// }

// class _ChangeTimeWidgetState extends State<ChangeTimeWidget> {
//   DateTime time = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('Time: $time'),
//         ElevatedButton(
//           onPressed: () {
//             time = DateTime.now();
//             setState(() {});
//           },
//           child: const Text('Update Time'),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Piranti Bergerak'),
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
  DateTime time = DateTime.now();

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
            const Text(
              'Aplikasi Flutter Pertama',
            ),
            Text(
              'Time: $time',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            time = DateTime.now();
          });
        },
        tooltip: 'Update Time',
        child: const Icon(Icons.update),
      ),
    );
  }
}
