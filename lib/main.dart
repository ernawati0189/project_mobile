import 'package:flutter/material.dart';
import 'package:praktikum_mobile/login.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('JINGGA'),
      ),

      body: new Container(
          child: new ListView(
          children: <Widget>[
            new Stack(
              children: <Widget>[
            new Image.asset(
                'images/login.jpg',
                fit:BoxFit.fill,
                scale: 2.0,
                width : 500,
                height : 650,
            ),
            new Center(
            child: Align(
              alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(top: 400, right: 5),
            child: new TextField(
              decoration: new InputDecoration(
                  hintText: "Username",
                  labelText: "Username",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  ),
            ),
            ),
            ),
            ),
            ),
        new Center(
          child: Align(
            alignment: Alignment.bottomRight,
           child: Container(
            margin:EdgeInsets.only(top: 470, right: 5),
            child: new TextField(
              obscureText: true,
              decoration: new InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                  )
              ),
            ),
           ),
          ),
            ),
            new Center(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    margin:EdgeInsets.only(top: 525, right: 130),
                child: new RaisedButton(
                  child: new Text("Sign in with Google"),
                  color: Colors.white,
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> MyApp1()),
                    );

                  },
                ),
                ),
              ),
            ),
            new Center(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    margin:EdgeInsets.only(top: 570, right: 165),
            child : new RaisedButton(
              child: new Text ("Masuk"),
              color: Colors.cyan,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> _NextPage2()),
                );
              },
            )
            ),
              ),
            ),
      ],
        ),
      ],
      ),
      ),
    );
  }
}

class _NextPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body : new Container(
        child: new ListView(
          children: <Widget>[
            new Stack(
              children: <Widget>[
            new Image.asset(
                'images/11.jpg',
                fit:BoxFit.fill,
                scale: 2.0,
              width : 500,
              height: 650,
            ),

            new Center(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    margin:EdgeInsets.only(top: 365, right: 30),
                    child : new RaisedButton(
                      child: new Text ("Lanjutkan"),
                      color: Colors.cyan,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> _NextPage3()),
                        );
                      },
                    )
                ),
              ),
            ),
              ],
            ),


      ],
      ),
      ),
      );
  }
}
class _NextPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Menu'),
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Image.asset(
                  'images/13.jpg',
                  fit: BoxFit.fill,
                  scale: 2.0,
                  width: 500,
                  height: 650,
                ),
              ],
            ),
          ],
        ),
        ),
      );
  }
}


