import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  Widget days(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, top: 5.0),
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10.0, left: 10.0),
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.yellow, Colors.red])),
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 21.0,
                      child: Center(
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text("Add Story", style: TextStyle(fontSize: 12.0)),
                )
              ],
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 10.0, left: 10.0),
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Colors.yellow, Colors.red])),
                child: CircleAvatar(
                  radius: 22.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 21.0,
                    child: FlutterLogo(),
                  ),
                ),
              ),
              Container(
                child: Text("username", style: TextStyle(fontSize: 12.0)),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _buildPost(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10.0, left: 10.0),
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [Colors.yellow, Colors.red])),
                    child: CircleAvatar(
                      radius: 17.0,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 16.0,
                        child: Center(
                          child: FlutterLogo(),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "larrypage",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
          Image.asset("assets/larry_page.jpg"),
          Padding(
            padding: const EdgeInsets.only(left: 14.0, right: 14.0, top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(FontAwesomeIcons.heart),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(FontAwesomeIcons.commentDots),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(FontAwesomeIcons.telegramPlane),
                    )
                  ],
                ),
                Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10.0, left: 10.0),
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.yellow, Colors.red])),
                  child: CircleAvatar(
                    radius: 13.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 12.0,
                      child: Center(
                        child: FlutterLogo(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Add a comment."
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) return days(context);

        return _buildPost(context);
      },
    );
  }
}
