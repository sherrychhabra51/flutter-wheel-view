//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:oowoo/data/flagData.dart';
//import 'package:oowoo/screens/onBoarding/welcomeprovider.dart';
//import 'package:oowoo/services/resources.dart';
//import 'package:provider/provider.dart';
//
//class FlagDropDown extends StatelessWidget {
//  List<Widget> listtiles = [
//    ListTile(
//      leading: Icon(Icons.portrait),
//      title: Text("Portrait"),
//      subtitle: Text("Beautiful View..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.landscape),
//      title: Text("LandScape"),
//      subtitle: Text("Beautiful View..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.map),
//      title: Text("Map"),
//      subtitle: Text("Map View..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.landscape),
//      title: Text("LandScape"),
//      subtitle: Text("Wonderful View..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.list),
//      title: Text("List Example"),
//      subtitle: Text("List Wheel Scroll view .!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.settings),
//      title: Text("Settings"),
//      subtitle: Text("Change the setting..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.event),
//      title: Text("Add data"),
//      subtitle: Text("Data View..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.landscape),
//      title: Text("LandScape"),
//      subtitle: Text("Beautiful View..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.email),
//      title: Text("Email"),
//      subtitle: Text("Check Email..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//    ListTile(
//      leading: Icon(Icons.games),
//      title: Text("Games"),
//      subtitle: Text("Play Games..!"),
//      trailing: Image.asset("images/flags/be.png",height: 30),
//    ),
//  ];
//  @override
//  Widget build(BuildContext context) {
//    final FixedExtentScrollController _controller = FixedExtentScrollController();
//    return RaisedButton(child: Text("Tap To Open"),onPressed: ()async{
//      int selected = 0;
//      bool done = false;
//
//      await showModalBottomSheet(
//          isDismissible: false,
//          context: context,
//          builder: (context) {
//            return Column(
//              mainAxisSize: MainAxisSize.min,
//              children: <Widget>[
//                Container(
//                  child: Align(
//                    alignment: Alignment.centerRight,
//                    child: Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: InkWell(
//                        child: Text(
//                          "Done",
//                          style: AppTextStyle.doneButtonStyle,
//                        ),
//                        onTap: () {
//                          done = true;
//                          Navigator.pop(context);
//                        },
//                      ),
//                    ),
//                  ),
//                  color: Colors.black,
//                ),
//                SizedBox(
//                  height: 250,
//                  child: CupertinoPicker(
//                    onSelectedItemChanged: (int item) {
//                      print("item - $item");
//                      selected = item;
//                    },
//                    backgroundColor: Colors.black87,
//                    itemExtent: 60,
//                    diameterRatio: 2,
//                    children: flagData.map((e) {
//                      return Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(5),
//                            child: Image.asset(
//                              e['flag'],
//                              height: 35,
//                            ),
//                          ),
//                          Expanded(
//                            child: Padding(
//                              padding: const EdgeInsets.all(8.0),
//                              child: Text(
//                                e['name'],
//                                style: AppTextStyle.flagNameStyle,
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Text(
//                              e['code'],
//                              style: AppTextStyle.flagNameStyle,
//                            ),
//                          )
//                        ],
//                      );
//                    }).toList(),
//                  ),
//                ),
//              ],
//            );
//          });
//      print("bottom sheet popped");
//
//    }
//    );
//  }
//}
