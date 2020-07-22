// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Hello Sergey'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Привет flutter',
              style: TextStyle(fontFamily: 'Comfortaa', fontSize: 20),
            ),
            Container(
              child: SvgPicture.asset("assets/images/flutterio-ar21.svg",
              color: Colors.blueGrey
              ),
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/500/300'))
              ),
            ),
            SvgPicture.asset("assets/images/flutterio-ar21.svg"),
            CarouselSlider(
              options: CarouselOptions(height: 300.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                      child: Text(
                        'text $i', 
                        style: TextStyle(fontSize: 26.0), 
                      ),
                      
                    );
                  },
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}
