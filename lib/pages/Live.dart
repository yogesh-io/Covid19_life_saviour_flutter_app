import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lifesaviour/pages/Country.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lifesaviour/Dataloader.dart';
import 'package:lifesaviour/pages/Tracker.dart';

class Live extends StatefulWidget {
  var value;
  var info;
  List countries;
  Map map;
  Live({@required this.value, this.info, this.countries, this.map});

  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  Router r = Router();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var _pages = [
      Tracker(
        value: widget.value,
        info: widget.info,
      ),
      Countrydata(
        value: widget.value,
        info: widget.info,
        countries: widget.countries,
        map: widget.map,
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
          backgroundColor: Color(0xffffe3ed),
          title: Text('LIVE COVID-19 TRACKER ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              )),
          actions: <Widget>[
            /* FlatButton(
              child: Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              onPressed: () => r.route(context),
            )*/
          ],
        ),
        body: _pages[index],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (i) {
              setState(() {
                index = i;
              });
            },
            backgroundColor: Color(0xffffe3ed),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.solidMap,
                    color: Colors.black,
                  ),
                  title: Text(
                    "World Report",
                    style: TextStyle(color: Colors.black),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.globeAmericas,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Country Report",
                    style: TextStyle(color: Colors.black),
                  )),
            ]));
  }
}
