import 'package:flutter/material.dart';
import 'package:image/image.dart';
import 'dart:io';
import 'package:thumbnailer/thumbnailer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  _MyAppStateState createState() => _MyAppStateState();
}

class _MyAppStateState extends State<MyAppState> {
//   File? _image;
//   String? _imagePath;
  //Read an image from the assets folder
//decodeJpg(File('ui_design/assets/images/image.jpg').readAsBytesSync());
//   void thumbnail() {
//     final thumbnail = copyResize(image, width: 120);
//     File('thumbnail.png').writeAsBytesSync(encodePng(thumbnail));
//   }

  void initState() {
    super.initState();
    Thumbnailer.addCustomMimeTypesToIconDataMappings(<String, IconData>{
      'custom/mimeType': FontAwesomeIcons.key,
    });
  }

  bool isSwitched = false;

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Catalogue'),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Products',
              ),
              Tab(
                text: 'Categories',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                          children: <Widget>[
                            Thumbnail(
                              dataResolver: () async {
                                return (await DefaultAssetBundle.of(context)
                                        .load('assets/images/image.jpg'))
                                    .buffer
                                    .asUint8List();
                              },
                              mimeType: 'image/png',
                              widgetSize: 100,
                              //dataSize: 12345,
                              // name: 'png',
                            ),
                          ],
                        ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Column(
                          children: <Widget>[
                            Thumbnail(
                              dataResolver: () async {
                                return (await DefaultAssetBundle.of(context)
                                        .load('assets/images/image2.jpeg'))
                                    .buffer
                                    .asUint8List();
                              },
                              mimeType: 'image/png',
                              widgetSize: 100,
                              //dataSize: 12345,
                              // name: 'png',
                            ),
                          ],
                        ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Column(
                          children: <Widget>[
                            Thumbnail(
                              dataResolver: () async {
                                return (await DefaultAssetBundle.of(context)
                                        .load('assets/images/image3.jpeg'))
                                    .buffer
                                    .asUint8List();
                              },
                              mimeType: 'image/png',
                              widgetSize: 100,
                              //dataSize: 12345,
                              // name: 'png',
                            ),
                          ],
                        ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Column(
                          children: <Widget>[
                            Thumbnail(
                              dataResolver: () async {
                                return (await DefaultAssetBundle.of(context)
                                        .load('assets/images/image4.jpg'))
                                    .buffer
                                    .asUint8List();
                              },
                              mimeType: 'image/png',
                              widgetSize: 100,
                              //dataSize: 12345,
                              // name: 'png',
                            ),
                          ],
                        ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Column(
                          children: <Widget>[
                            Thumbnail(
                              dataResolver: () async {
                                return (await DefaultAssetBundle.of(context)
                                        .load('assets/images/image6.jpeg'))
                                    .buffer
                                    .asUint8List();
                              },
                              mimeType: 'image/png',
                              widgetSize: 100,
                              //dataSize: 12345,
                              // name: 'png',
                            ),
                          ],
                        ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.accessibility),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.accessibility),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.accessibility),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.accessibility),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.accessibility),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Couch Potato'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('1 Piece'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('\$10.00'),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text('In Stock',
                                      style: TextStyle(
                                        color: Colors.green,
                                      )),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.more_vert),
                                  Switch(
                                      value: isSwitched,
                                      onChanged: toggleSwitch),
                                ],
                              ),
                            ],
                          ),
                          const Divider(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share),
                              Text('Share product'),
                            ],
                          )
                        ],
                      ),
                    ),
                    elevation: 8.0,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/ordered');
          },
          child: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
