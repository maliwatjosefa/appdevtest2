import 'package:appdevnursie/dashboard/journal/database.dart';
import 'package:appdevnursie/dashboard/journal/journal.dart';
import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:appdevnursie/dashboard/journal/postlist.dart';
import 'package:flutter/material.dart';

class MusclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Post> posts = [];

  void postMusclePain() {
    var post =
        new Post("MUSCLE PAIN", "Muscle Pain", new DateTime.now().toString());
    post.setId(savePost(post));
    this.setState(() {
      posts.add(post);
    });
  }

  void backJournal() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => JournalPage()));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffe7ecf0),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          //child: ConstrainedBox(
          //  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            //height: 795,
            child: Stack(
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.only(top: 120),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image:
                                  AssetImage('assets/images/upperPart.png')))),
                ),
                new Container(
                    height: size.height * .3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage(
                                'assets/images/musclepainHeader.png')))),
                new Padding(
                  padding: EdgeInsets.only(top: 55),
                  child: IconButton(
                      alignment: Alignment.topLeft,
                      icon: Icon(Icons.arrow_back_rounded),
                      onPressed: this.backJournal),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 205),
                  child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image:
                                  AssetImage('assets/images/pageInfo.png')))),
                ),
                new Padding(
                  padding: EdgeInsets.only(top: 375),
                  child: Container(
                      height: size.height * .3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.topCenter,
                              image: AssetImage('assets/images/tape.png')))),
                ),
                new SafeArea(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                        child: Column(children: <Widget>[
                          new Container(
                              //height: 713,
                              //margin: EdgeInsets.only(bottom: 5),
                              child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text.rich(
                                        TextSpan(
                                          text: "Muscle Pain",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: TextStyle(fontSize: 45)),
                                  ]),
                              new Container(
                                padding: EdgeInsets.fromLTRB(32, 95, 40, 1),
                                child: Text(
                                  "Muscle pain, or myalgia, is a sign of an injury, infection, disease or other health problem. You may feel a deep, steady ache or random sharp pains.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 65),
                                  child: Card(
                                      color: Color(0xffe7ecf0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      elevation: 4,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 10, 10, 10),
                                            child: Center(
                                              child: Text(
                                                "Click the check button if you are experiencing muscle pain",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 15, 10, 15),
                                              child: Row(children: <Widget>[
                                                ClipRect(
                                                    child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              'assets/images/check5.png'))),
                                                  child: TextButton(
                                                    //padding: EdgeInsets.all(0.0),
                                                    onPressed:
                                                        this.postMusclePain,
                                                    child: Container(),
                                                  ),
                                                )),
                                                SizedBox(width: 20),
                                                Text(
                                                  "I am experiencing muscle pain.",
                                                  style: TextStyle(
                                                    //fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ])),
                                        ],
                                      ))), //Applicable Container
                            ],
                          )), //Safe Area Container
                        ]))),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.width * 0.33,
              child: PostList(this.posts))
        ],
      )
          //)
          ),
    );
  }
}