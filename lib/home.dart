import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var index=0;
  var qutoes = [
    "It always seems impossible until it's done 😎",
    "Start where you are. Use what you have. Do what you can 🧐",
    "Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better 😅",
    "A good plan violently executed now is better than a perfect plan executed next week 😜",
    "If you fell down yesterday, stand up today 😉"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inspiring Quotes"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text( qutoes[index % qutoes.length],textAlign: TextAlign.center,style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w700,fontSize: 30),),
              SizedBox(height: 30,),
              RaisedButton(
                color: Colors.blue,
                onPressed: _changeQuote,
                child: Text("Tap for new Quote",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }

  _changeQuote(){
    setState(() {
      index++;
    });
  }
}
