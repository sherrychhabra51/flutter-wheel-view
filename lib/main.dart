import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

List<Map<String, String>> flagData = [
  {"name": "India", "flag": "images/flags/in.png"},
  {"name": "France", "flag": "images/flags/fr.png"},
  {"name": "Italy", "flag": "images/flags/it.png"},
  {"name": "Germany", "flag": "images/flags/de.png"},
  {"name": "Belgium", "flag": "images/flags/be.png"},
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double hgt;
  double wdth;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    hgt = size.height;
    wdth = size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("ScrollWheel in bottom sheet"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset("images/image_1.png",height:200, width:200),
            SizedBox(height: 10),
            RaisedButton(
                child: Text("Tap To Open"),
                onPressed: () async {
                  _showBottomSheetModal();
                })
          ]),
        ));
  }

  _showBottomSheetModal() {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 250,
                child: CupertinoPicker(
                  onSelectedItemChanged: (int item) {
                    print("item - $item");
                  },
                  itemExtent: 80,
                  diameterRatio: 2,
                  children: flagData.map((e) {
                    print(e['flag']);
                    return Row(
                      children: <Widget>[
                        Image.asset(
                          e['flag'],
                          width: 30,
                          height: 30,
                        ),
                        Text(e['name'])
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          );
        });
  }
}
