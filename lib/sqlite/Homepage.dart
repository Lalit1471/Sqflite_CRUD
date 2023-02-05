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

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
