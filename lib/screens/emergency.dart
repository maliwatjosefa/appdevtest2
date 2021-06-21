import 'dart:async';

import 'package:appdevnursie/screens/dashboard.dart';
import 'package:flutter/material.dart';

class Emergency extends StatefulWidget {
  @override
  _EmergencyState createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 3000), () {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) => Details()));
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/emergency2.png'),
              fit: BoxFit.cover),
        ),
          child: Center(
            
            
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    
                     CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.black,
                          
                          ),
                          strokeWidth: 6,
                          backgroundColor: Color(0xffadddce),
                        ),
                     
                  
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Text(
                    //   "Reading contacts and location...",
                    //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    // ),
                   
                  ]),
            ),
        ),
       
  
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => Dashboard()));
      },
          child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/emergency.png'),
              fit: BoxFit.cover),
        ),
        
          ),
      ),
    );
  }
}
