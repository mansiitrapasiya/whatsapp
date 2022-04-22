import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayOutDesign(),
    );
  }
}

class LayOutDesign extends StatefulWidget {
  const LayOutDesign({Key? key}) : super(key: key);

  @override
  State<LayOutDesign> createState() => _LayOutDesign();
}

class _LayOutDesign extends State<LayOutDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Whatsapp"),
        actions: const [
          Icon(Icons.search, size: 40),
          SizedBox(width: 20),
          Icon(Icons.more_vert, size: 40),
        ],
      ),
      body: ListView(
        children: [
          _listItem(
            desig: 'Actor',
            name: 'Tommy',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Ronit',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Tina',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Mahi',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Alia',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Rommy',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Rocky',
          ),
          _listItem(
            desig: 'Actor',
            name: 'heet',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Zarana',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Rahul',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Smit',
          ),
          _listItem(
            desig: 'Actor',
            name: 'Om',
          ),
        ],
      ),
    );
  }

  Widget _listItem({String? name, String? desig}) {
    return ListTile(
        dense: true,
        onTap: () => ("$name pressed"),
        leading: CircleAvatar(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/whp.jpeg',
              fit: BoxFit.fitHeight,
              height: 70,
            ),
          ),
        ),
        title: Text("$name"),
        subtitle: Text("$desig"),
        trailing: const Icon(Icons.more_vert));
  }
}
