import 'package:flutter/material.dart';
import 'package:fetch_prescription/fetch.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  Color _color = Colors.black;
  String colorGroupValue = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(children: [
          Center(
            child: ProfilePic(),
          ),
          Text(
            'Upload prescription',
            style: TextStyle(
              color: Color(0xff29cccc),
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: 90.0,
              height: 140.0,
              decoration: new BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('images/pre_fetch.jpg'),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.highlight_remove_outlined,
                  size: 40.0,
                  color: Colors.black38,
                ),
                onPressed: () {},
                padding: EdgeInsets.only(left: 70.0, bottom: 130.0),
              ),

              margin: EdgeInsets.fromLTRB(20, 20, 60, 22),
              //height: 150,
            ),
            Container(
              width: 90.0,
              height: 120.0,
              decoration: new BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      0.5,
                      0.5,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 0.1,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              //  color: Colors.blueGrey,
              //shape: BoxShape.rectangle,
              //border: Border.all(width: 0.0, color: Colors.white),

              child: Column(children: [
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.add_photo_alternate_outlined,
                      size: 50.0,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.only(
                      right: 10.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 18.0,
                  ),
                ),
              ]),
              // margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0)
            ),
          ]),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 0.5,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 20,
                ),
                Icon(
                  Icons.add_call,
                  size: 25.0,
                  color: _color,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Ask Medxcart to call',
                  style: TextStyle(
                    color: Colors.teal.shade800,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(width: 109.0),
                Radio(
                  value: Colors.green,
                  groupValue: _color,
                  onChanged: (val) {
                    _color = Colors.green;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: new BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: const Offset(
                    1.0,
                    1.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                  height: 20,
                ),
                Icon(
                  Icons.search,
                  size: 25.0,
                  color: _color,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Search and Add Medicines',
                  style: TextStyle(
                    color: Colors.teal.shade800,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(width: 60.0),
                Radio(
                  value: Colors.blue,
                  groupValue: _color,
                  onChanged: (val) {
                    _color = val;
                    _color = Colors.blue;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
