import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({Key? key}) : super(key: key);

  @override
  _ManageStoreState createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Manage Store'),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4/3,
          children: [
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.manage_accounts,
                            size: 35, color: Colors.orange),
                        Text('Manage Store',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.payment, size: 35, color: Colors.green),
                        Text('Online Payments',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.account_tree,
                            size: 35, color: Colors.yellow),
                        Text('Discount Coupons',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.people, size: 35, color: Colors.blue),
                        Text('My Customers',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.qr_code, size: 35, color: Colors.grey),
                        Text('Store QR Code',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.money, size: 35, color: Colors.purple),
                        Text('Extra Charges',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: 50,
              width: 100,
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.list,
                                  size: 35, color: Colors.tealAccent),
                              Container(
                                height: 24,
                                width: 50,
                                child: Card(
                                    color: Colors.green,
                                    child: Text(
                                      'NEW',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 12,
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ]),
                        Text('Order Form',
                            style: TextStyle(
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 20,
                            )),
                      ]),
                ),
                elevation: 5,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/information');
          },
          child: Icon(Icons.arrow_forward_ios_outlined),
        ));
  }
}
