import 'package:crud_testing/sqlite/Database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late DB db;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db = DB();
  }

  Future<void> show() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SizedBox(
              height: 150,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: "title"),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sqflite",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          show();
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
