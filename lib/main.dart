import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}


class _State extends State<MyApp> {

  String _message = 'Tap this button.';
  String _url = "https://inuyama.gr.jp/wordpress/wp-content/uploads/2016/01/s-1107-WRC10189-HDR-520x350.jpg";

  @override
  Widget build(BuildContext context) {


    // var _url = "hoge";
    // _url = "huga";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('埼玉 市町村ルーレット ',
          style: TextStyle(
            
          ),
        ),
          backgroundColor: Colors.orange[300],
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              // Image.asset("image/saitamashi.png"),
              Image.network('$_url'),

              Text(
                _message,
              style: TextStyle(
// fontFamily: "",
                fontWeight: FontWeight.bold,
              color: Colors.orange
              ),
              ),
              ElevatedButton(
                child: const Text('START'),
                style: ElevatedButton.styleFrom(
                  // color: HexColor("fb0c00"),
                primary: Colors.orange,
                  onPrimary: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: _onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _onPressed() {

    setState(() {
      List list = ['a', "b", "c"];
      // generates a new Random object
      final _random = new Random();

      var element = list[_random.nextInt(list.length)];
      // var _url = "hogehoge";

      if(element == "a") {
        _message = "さいたま市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Emblem_of_Saitama%2C_Saitama.svg/200px-Emblem_of_Saitama%2C_Saitama.svg.png";
      } else if (element == "b") {
        _message = "川越市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Emblem_of_Kawagoe%2C_Saitama.svg/200px-Emblem_of_Kawagoe%2C_Saitama.svg.png";
      } else {
        _message = "熊谷市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/埼玉県熊谷市市章.svg/200px-埼玉県熊谷市市章.svg.png";
      }

    });
  }

}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}