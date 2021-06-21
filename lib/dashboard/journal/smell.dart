import 'package:appdevnursie/dashboard/journal/database.dart';
import 'package:appdevnursie/dashboard/journal/journal.dart';
import 'package:appdevnursie/dashboard/journal/post.dart';
import 'package:appdevnursie/dashboard/journal/postlist.dart';
import 'package:flutter/material.dart';

class SmellPage extends StatelessWidget {
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

  void postSmell() {
    var post = new Post(
        "LOSS OF SMELL", "Loss of Smell", new DateTime.now().toString());
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
                            image:
                                AssetImage('assets/images/smellHeader.png')))),
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
                                          text: "Loss of Smell",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: TextStyle(fontSize: 40)),
                                  ]),
                              new Container(
                                padding: EdgeInsets.fromLTRB(36, 105, 36, 1),
                                child: Text(
                                  "Loss of smell results from nasal congestion or blockage of the nose, or it can be a sign of a nervous system (neurological) condition.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 40),
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
                                                "Click the check button if you are experiencing loss of smell",
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
                                                    onPressed: this.postSmell,
                                                    child: Container(),
                                                  ),
                                                )),
                                                SizedBox(width: 20),
                                                Text(
                                                  "I am experiencing loss of smell.",
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