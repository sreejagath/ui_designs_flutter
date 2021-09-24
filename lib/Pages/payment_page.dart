import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PaymentPageState extends StatefulWidget {
  @override
  PaymentPage createState() => PaymentPage();
}

class PaymentPage extends State<PaymentPageState> {
  int finalAmount = 50000;
  int recieved = 36668;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'Transactions Limit',
                    style: TextStyle(
                        fontFamily: 'Montserrat-Regular',
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ]),
                SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 350,
                    child: Text(
                        'A free limit up to which you will recieve the online payments directly in your bank'),
                  ),
                ]),
                SizedBox(height: 12),
                LinearPercentIndicator(
                  percent: ((this.recieved / this.finalAmount) * 100) / 100,
                  progressColor: Colors.blue,
                ),
                SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    width: 350,
                    child: Text(
                        '${this.recieved} left out of \u{20B9} ${this.finalAmount}'),
                  ),
                ]),
                SizedBox(height: 12),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Increase Limit'),
                  )
                ])
              ]),
            ),
            elevation: 5.0,
          ),
          SizedBox(height: 12),
          Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Default Method',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Regular',
                  )),
              Row(children: [
                Text('Online Payment',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'Montserrat-Regular')),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ])
            ]),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Payment Profile',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Regular',
                  )),
              Row(children: [
                Text('Bank Account',
                    style: TextStyle(
                        color: Colors.grey, fontFamily: 'Montserrat-Regular')),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                ),
              ])
            ]),
            SizedBox(height: 12),
            Divider(
              height: 5,
              thickness: 3,
            ),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text('Payment Overview',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Regular',
                    fontWeight: FontWeight.w600,
                  )),
              Row(children: [
                Text(
                  'Lifetime',
                  style: TextStyle(
                      color: Colors.grey, fontFamily: 'Montserrat-Regular'),
                ),
                Icon(Icons.keyboard_arrow_down_outlined, color: Colors.grey),
              ])
            ])
          ]),
          SizedBox(height: 12),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 100,
              width: 180,
              child: Card(
                  color: Colors.orange,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              color: Colors.white),
                        ),
                        Text(
                          '0.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              color: Colors.white),
                        ),
                      ])),
            ),
            Container(
              height: 100,
              width: 180,
              child: Card(
                  color: Colors.green,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AMOUNT RECEIVED',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              color: Colors.white),
                        ),
                        Text(
                          '0.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              color: Colors.white),
                        ),
                      ])),
            )
          ]),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Transactions',
                  style: TextStyle(
                    fontFamily: 'Montserrat-Regular',
                    fontWeight: FontWeight.w600,
                  ))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100.0,
                height: 30.0,
                child: Card(
                  color: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  child: SizedBox(
                    height: 2,
                    child: Text('On Hold',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        )),
                  ),
                  elevation: 5.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
          Column(children: [
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Icon(Icons.accessibility_new),
                Expanded(
                  flex: 2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #3967343',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Regular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          '0.00',
                          style: TextStyle(
                            fontFamily: 'Montserrat-Regular',
                            color: Colors.grey,
                          ),
                        ),
                      ]),
                ),
                Column(children: [
                  Text(
                    '799',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Successful',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      color: Colors.grey,
                    ),
                  )
                ])
              ]),
              SizedBox(height: 12),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text('799 deposited to 367653278732764',
                    style: TextStyle(
                      fontFamily: 'Montserrat-Regular',
                      fontSize: 10.0,
                    ))
              ]),
              Divider(
                height: 5,
              ),
            ])
          ])
        ]),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {Navigator.pushNamed(context, '/manage')},
        child: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}
