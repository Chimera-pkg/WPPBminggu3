import 'package:flutter/material.dart';
import 'package:minggu3/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? required this.place}) : super(key: key);

  final TourismPlace place;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/images/submarine.jpg'),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Text(
              "Surabaya Submarine Monument",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: const <Widget>[
                    Icon(Icons.calendar_today),
                    Text('Open Everyday'),
                  ],
                ),
                Column(children: const <Widget>[
                  Icon(Icons.lock_clock),
                  Text('08.00 - 16.00')
                ]),
                Column(
                  children: const <Widget>[
                    Icon(Icons.money),
                    Text('Rp.10.000'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            child: const Text(
              'Museum inside a decommissioned Russian war submarien with tours & adjacent park with cafes. Clean well and well maintained. Car parrk cost 10k, entrance fee 15k/person. You can see KRI pasopati there , it is a russian whiskey class. You can also watch the video about the indonesian navy at the building beside the submarine',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(
                      'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/monkasel1.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/monkasel2.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/monkasel3.jpeg'),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
