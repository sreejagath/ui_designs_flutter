import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PremiumPageState extends StatefulWidget {
  @override
  PremiumPage createState() => PremiumPage();
}

class PremiumPage extends State<PremiumPageState> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
    params: YoutubePlayerParams(
      playlist: ['nPt8bK2gbaU', 'gQDByCdjUXw'], // Defining custom playlist
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: <Widget>[
              Container(
                  height: 140,
                  child: AppBar(
                    title: Text(
                      'Dukaan Premium',
                      style: TextStyle(fontFamily: 'Montserrat-Regular'),
                    ),
                    elevation: 0.0,
                    centerTitle: true,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 90, 8, 0),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      child: Card(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart, color: Colors.green),
                                Text(
                                  'Dukaan Premium',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat-Regular'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'Get Dukaan Premium for just \u{20B9} 4,999/year',
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Regular',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Container(
                            width: 300,
                            child: Text(
                              'All the advanced features for scaling your business',
                              style: TextStyle(
                                  fontFamily: 'Montserrat-Regular',
                                  fontSize: 15,
                                  color: Colors.grey[600]),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ]),
                        elevation: 5.0,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 4,
                        ),
                        Text('Features',
                            style: TextStyle(
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      title: Text('Custom domain name'),
                      subtitle: Text(
                          'Get your custom domain name and build your brand on the internet'),
                      leading: Icon(
                        Icons.domain,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      title: Text('Custom domain name'),
                      subtitle: Text(
                          'Get your custom domain name and build your brand on the internet'),
                      leading: Icon(
                        Icons.domain,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      title: Text('Custom domain name'),
                      subtitle: Text(
                          'Get your custom domain name and build your brand on the internet'),
                      leading: Icon(
                        Icons.domain,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      title: Text('Custom domain name'),
                      subtitle: Text(
                          'Get your custom domain name and build your brand on the internet'),
                      leading: Icon(
                        Icons.domain,
                        color: Colors.blue,
                      ),
                    ),
                    Divider(
                      height: 5,
                      thickness: 5,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 4,
                        ),
                        Text('What is Dukaan Premium?',
                            style: TextStyle(
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(height: 12),
                    YoutubePlayerIFrame(
                      controller: _controller,
                      aspectRatio: 16 / 9,
                    ),
                    // Column(children: [
                    //   Row(children: [
                    //     Icon(Icons.web, color: Colors.blue),
                    //     Container(
                    //       width: 300,
                    //       child: Column(children: [
                    //         Text('Custom domain name'),
                    //         Text(
                    //             'Get your custom domain name and build your brand on the internet'),
                    //       ]),
                    //     )
                    //   ])
                    // ])
                  ],
                ),
              )
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/payments');
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
