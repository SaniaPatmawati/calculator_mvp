import 'package:flutter/material.dart';
import 'package:latihan_mpv/model/model.dart';
import 'package:latihan_mpv/presenter/presenter.dart';
import 'package:latihan_mpv/view/view.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  final AppPresenter presenter;

  MyHomePage(this.presenter, {this.title, Key key}): super (key:key);
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements AppView {

  AppModel _appModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _appModel.controller1,
          ),
          TextField(
            controller: _appModel.controller2,
          ),
          RaisedButton(
            onPressed: ()=>this.widget.presenter.buttonClick(),
            child: Icon(Icons.add),
          ),
          Text("Result : ${_appModel.resut}", style: TextStyle(fontSize:30.0),)
        ],
      ),

    );
  }

  @override
  void refreshData(AppModel model) {
    // TODO: implement refreshData
    setState(() {
     this._appModel=model;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.widget.presenter.view=this;
  }
}