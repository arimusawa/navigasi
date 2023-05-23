import 'package:flutter/material.dart';
import 'package:flutter_navigation/nextPage.dart';
import 'package:flutter_navigation/statefulWidget.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              title: Text("Home")),
            ListTile(
              title: Text("Stateful Widget"),
              onTap: () {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const stafulWidget(),
                ),
              );
              },
            )
          ],
        )),
        appBar: AppBar(title: const Text("HomeApp")),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.no_transfer)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const TextField(
                decoration: InputDecoration(labelText: "Username"),
              ),
              const TextField(
                decoration: InputDecoration(labelText: ("Password")),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyWidget(
                          parameter: "Ari Param",
                        ),
                      ),
                    );
                  },
                  child: const Text("Login"))
            ],
          ),
        ));
  }
}
