import 'package:flutter/material.dart';
import 'package:thumbnailer/thumbnailer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class OrderedPageState extends StatefulWidget {
  @override
  OrderedPage createState() => OrderedPage();
}

class OrderedPage extends State<OrderedPageState> {
  final orderId = 25689;
  final date = '25 May 2021, 07 : 30PM';
  final itemCount = 3;
  final productName = 'The Enchanted Nightingale';
  final size = 'S';
  final price = '99.99';
void initState() {
    super.initState();
    Thumbnailer.addCustomMimeTypesToIconDataMappings(<String, IconData>{
      'custom/mimeType': FontAwesomeIcons.key,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order #$orderId'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                '$date',
                style: TextStyle(fontFamily: 'Montserrat-Regular'),
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 5.0,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Delivered',
                    style: TextStyle(fontFamily: 'Montserrat-Regular'),
                  ),
                ],
              ),
            ]),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              height: 5,
              thickness: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$itemCount ITEMS',
                        style: TextStyle(color: Colors.grey[600])),
                    Row(children: [
                      Icon(
                        Icons.receipt,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'RECIEPT',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Montserrat-Regular'),
                      )
                    ])
                  ]),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Column(
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
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    '$productName',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '$itemCount pieces',
                    style: TextStyle(fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Size : $size',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text('$itemCount X \u{20B9} $price',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontFamily: 'Montserrat-Regular')),
                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  SizedBox(
                    height: 19.0,
                  ),
                  Text(
                    '\u{20B9} $price',
                    style: TextStyle(fontFamily: 'Montserrat-Regular'),
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Divider(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Item Total'), Text('\u{20B9} $price')]),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery'),
                      Text(
                        'FREE',
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: 'Montserrat-Regular'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Regular',
                            fontSize: 17.0,
                          ),
                        ),
                        Text('\u{20B9} $price',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 17.0,
                            )),
                      ])
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Divider(
              height: 5.0,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text('CUSTOMER DETAILS'),
                const SizedBox(width: 8),
                Row(children: [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Text('SHARE',
                      style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Montserrat-Regular')),
                ])
              ]),
              SizedBox(
                height: 12.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text('Jagal R Nath',
                      style: TextStyle(fontFamily: 'Montserrat-Regular')),
                  SizedBox(height: 10),
                  Text('+91-9876543210',
                      style: TextStyle(
                          fontFamily: 'Montserrat-Regular',
                          color: Colors.grey[600])),
                ]),
                Row(children: [
                  Icon(
                    Icons.phone_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.phone_enabled_rounded, color: Colors.green),
                ])
              ]),
            ]),
            SizedBox(height: 15.0),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'ADDRESS',
                style: TextStyle(fontFamily: 'Montserrat-Regular'),
              ),
            ]),
            Padding(
                padding: EdgeInsets.only(right: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      width: 120.0,
                      child:
                          Text('Carnival Infopark Phase - 1, Kakkanadu, Kochi'),
                    ),
                  ],
                )),
            SizedBox(
              height: 12.0,
            ),
            Row(children: [
              Column(
                children: [
                  Text('CIty',
                      style: TextStyle(fontFamily: 'Montserrat-Regular')),
                  Container(
                    child: Text('Kochi'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 120.0),
                child: Column(
                  children: [
                    Text('State',
                        style: TextStyle(fontFamily: 'Montserrat-Regular')),
                    Container(
                      child: Text('Kochi'),
                    ),
                  ],
                ),
              ),
            ])
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/premium');
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
