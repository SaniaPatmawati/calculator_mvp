import 'package:flutter/material.dart';
import 'package:latihan_mpv/view/myhomepage.dart';
import 'package:latihan_mpv/presenter/presenter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo MVP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(new BasicAppPresenter(), title: 'Flutter Demo MVP'),
    );
  }
}

