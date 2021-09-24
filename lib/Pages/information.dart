import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Additional Information'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Share Dukaan App'),
                leading: Icon(Icons.share),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                title: Text('Change language'),
                leading: Icon(Icons.language),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                title: Text('Whatsapp Chat Support'),
                leading: Icon(Icons.phone),
                trailing: Switch(value: isSwitched, onChanged: toggleSwitch),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                title: Text('Privacy Policy'),
                leading: Icon(Icons.lock),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                title: Text('Rate Us'),
                leading: Icon(Icons.star),
              ),
              SizedBox(
                height: 12,
              ),
              ListTile(
                title: Text('Sign Out'),
                leading: Icon(Icons.exit_to_app),
              ),
            ],
          ),
        ));
  }
}
