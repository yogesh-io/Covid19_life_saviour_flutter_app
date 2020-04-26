import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifesaviour/pages/Top_view.dart';

class Countrydata extends StatefulWidget {
  var value;
  var info;
  List countries;
  Map map;
  Countrydata({@required this.value, this.info, this.countries, this.map});

  @override
  _CountrydataState createState() => _CountrydataState();
}

class _CountrydataState extends State<Countrydata> {
  String val = 'India';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          child: Top_bar(info: widget.info),
        ),
        Expanded(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: DropdownButton<String>(
                value: val,
                items: widget.countries.map<DropdownMenuItem<String>>((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  );
                }).toList(),
                onChanged: (String e) {
                  setState(() {
                    val = e;
                  });
                },
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          child: Text(
                            widget.map[val].name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 61,
                        width: 90,
                        child: ClipRRect(
                          child: Image(
                            fit: BoxFit.cover,
                            image:
                                NetworkImage(widget.map[val].flag.toString()),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ])),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Cases",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          Text(widget.map[val].cases.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Deaths",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Text(widget.map[val].deaths.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Recovered",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Text(widget.map[val].recovered.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Active",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurpleAccent),
                          ),
                          Text(widget.map[val].active.toString(),
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
