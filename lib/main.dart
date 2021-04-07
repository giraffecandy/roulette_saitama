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

    // final size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    // var maxHeight = size.height - padding.top - padding.bottom;
    //
    // // アプリ描画エリアの縦サイズを取得
    // // if (Platform.isAndroid) {
    // //   maxHeight = size.height - padding.top - kToolbarHeight;
    // // } else if (Platform.isIOS) {
    //   maxHeight = size.height - padding.top - padding.bottom - 22;
    // // }
    //
    // // Resultエリアの縦サイズ
    // final resultAreaHeight = maxHeight * (30 / 100);
    // // テンキーエリアの縦サイズ
    // final tenkeyAreaHeight = maxHeight * (70 / 100);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('埼玉 市町村ルーレット ',
          style: TextStyle(
          fontWeight: FontWeight.bold,
          ),
        ),
          backgroundColor: Colors.orange[300],
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    // Image.asset("image/saitamashi.png"),
                    Image.network('$_url'),
                  ],
                )
                // width: size.width,
                // height: resultAreaHeight,
              ),

              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                    Text(
                    _message,
                    style: TextStyle(
                      // fontFamily: "",
                        fontWeight: FontWeight.bold,
                        color: Colors.orange
                    ),
                  ),
                  ]
                ),
              ),

              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
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
            ],
          ),
        ),
      ),
    );
  }
  void _onPressed() {

    setState(() {
      List list = ['1', "2", "3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32",
        "33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66"];
      // generates a new Random object
      final _random = new Random();

      var element = list[_random.nextInt(list.length)];
      // var _url = "hogehoge";

      if(element == "1") {
        _message = "さいたま市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Emblem_of_Saitama%2C_Saitama.svg/200px-Emblem_of_Saitama%2C_Saitama.svg.png";
      } else if (element == "2") {
        _message = "川越市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Emblem_of_Kawagoe%2C_Saitama.svg/200px-Emblem_of_Kawagoe%2C_Saitama.svg.png";
      } else if(element == "3") {
        _message = "熊谷市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/埼玉県熊谷市市章.svg/200px-埼玉県熊谷市市章.svg.png";
      } else if(element == "4") {
        _message = "川口市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/埼玉県川口市市章.svg/200px-埼玉県川口市市章.svg.png";
      } else if(element == "5") {
        _message = "行田市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Emblem_of_Gyoda%2C_Saitama.svg/200px-Emblem_of_Gyoda%2C_Saitama.svg.png";
      } else if(element == "6") {
        _message = "秩父市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Emblem_of_Chichibu%2C_Saitama.svg/200px-Emblem_of_Chichibu%2C_Saitama.svg.png";
      } else if(element == "7") {
        _message = "所沢市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Emblem_of_Tokorozawa%2C_Saitama.svg/200px-Emblem_of_Tokorozawa%2C_Saitama.svg.png";
      } else if(element == "8") {
        _message = "飯能市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/埼玉県飯能市市章.svg/200px-埼玉県飯能市市章.svg.png";
      } else if(element == "9") {
        _message = "加須市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Emblem_of_Kazo%2C_Saitama.svg/200px-Emblem_of_Kazo%2C_Saitama.svg.png";
      } else if(element == "10") {
        _message = "本庄市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/f/fa/Honjo_Saitama_chapter.JPG";
      } else if(element == "11") {
        _message = "東松山市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Emblem_of_Higashimatsuyama%2C_Saitama.svg/200px-Emblem_of_Higashimatsuyama%2C_Saitama.svg.png";
      } else if(element == "12") {
        _message = "春日部市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Emblem_of_Kasukabe%2C_Saitama.svg/200px-Emblem_of_Kasukabe%2C_Saitama.svg.png";
      } else if(element == "13") {
        _message = "狭山市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/埼玉県狭山市市章.svg/200px-埼玉県狭山市市章.svg.png";
      } else if(element == "14") {
        _message = "羽生市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/埼玉県羽生市市章.svg/200px-埼玉県羽生市市章.svg.png";
      } else if(element == "15") {
        _message = "鴻巣市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/埼玉県鴻巣市市章.svg/200px-埼玉県鴻巣市市章.svg.png";
      } else if(element == "16") {
        _message = "深谷市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Emblem_of_Fukaya%2C_Saitama.svg/200px-Emblem_of_Fukaya%2C_Saitama.svg.png";
      } else if(element == "17") {
        _message = "上尾市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Emblem_of_Ageo%2C_Saitama.svg/200px-Emblem_of_Ageo%2C_Saitama.svg.png";
      } else if(element == "18") {
        _message = "草加市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/Emblem_of_Soka%2C_Saitama.svg/200px-Emblem_of_Soka%2C_Saitama.svg.png";
      } else if(element == "19") {
        _message = "越谷市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Emblem_of_Koshigaya%2C_Saitama.svg/200px-Emblem_of_Koshigaya%2C_Saitama.svg.png";
      } else if(element == "20") {
        _message = "蕨市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/埼玉県蕨市市章.svg/200px-埼玉県蕨市市章.svg.png";
      } else if(element == "21") {
        _message = "戸田市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Emblem_of_Toda%2C_Saitama.svg/200px-Emblem_of_Toda%2C_Saitama.svg.png";
      } else if(element == "22") {
        _message = "入間市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Emblem_of_Iruma%2C_Saitama.svg/200px-Emblem_of_Iruma%2C_Saitama.svg.png";
      } else if(element == "23") {
        _message = "朝霞市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Emblem_of_Asaka%2C_Saitama.svg/200px-Emblem_of_Asaka%2C_Saitama.svg.png";
      } else if(element == "24") {
        _message = "志木市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Emblem_of_Shiki%2C_Saitama.svg/200px-Emblem_of_Shiki%2C_Saitama.svg.png";
      } else if(element == "25") {
        _message = "和光市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Emblem_of_Wako%2C_Saitama.svg/200px-Emblem_of_Wako%2C_Saitama.svg.png";
      } else if(element == "26") {
        _message = "新座市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Emblem_of_Niiza%2C_Saitama.svg/200px-Emblem_of_Niiza%2C_Saitama.svg.png";
      } else if(element == "27") {
        _message = "桶川市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Emblem_of_Okegawa%2C_Saitama.svg/200px-Emblem_of_Okegawa%2C_Saitama.svg.png";
      } else if(element == "28") {
        _message = "久喜市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/Kuki_Saitama_chapter.JPG/200px-Kuki_Saitama_chapter.JPG";
      } else if(element == "29") {
        _message = "北本市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Emblem_of_Kitamoto%2C_Saitama.svg/200px-Emblem_of_Kitamoto%2C_Saitama.svg.png";
      } else if(element == "30") {
        _message = "八潮市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/1/1f/Yashio_Saitama_chapter.JPG";
      } else if(element == "31") {
        _message = "富士見市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Emblem_of_Fujimi%2C_Saitama.svg/200px-Emblem_of_Fujimi%2C_Saitama.svg.png";
      } else if(element == "32") {
        _message = "三郷市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Emblem_of_Misato%2C_Saitama.svg/200px-Emblem_of_Misato%2C_Saitama.svg.png";
      } else if(element == "33") {
        _message = "蓮田市	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Emblem_of_Hasuda%2C_Saitama.svg/200px-Emblem_of_Hasuda%2C_Saitama.svg.png";
      } else if(element == "34") {
        _message = "坂戸市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Sakado_Saitama_chapter.JPG/200px-Sakado_Saitama_chapter.JPG";
      } else if(element == "35") {
        _message = "幸手市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Satte_Saitama_chapter.JPG/200px-Satte_Saitama_chapter.JPG";
      } else if(element == "36") {
        _message = "鶴ヶ島市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Emblem_of_Tsurugashima%2C_Saitama.svg/200px-Emblem_of_Tsurugashima%2C_Saitama.svg.png";
      } else if(element == "37") {
        _message = "日高市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Emblem_of_Hidaka%2C_Saitama.svg/200px-Emblem_of_Hidaka%2C_Saitama.svg.png";
      } else if(element == "38") {
        _message = "吉川市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Emblem_of_Yoshikawa%2C_Saitama.svg/200px-Emblem_of_Yoshikawa%2C_Saitama.svg.png";
      } else if(element == "39") {
        _message = "ふじみ野市";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/Emblem_of_Fujimino%2C_Saitama.svg/200px-Emblem_of_Fujimino%2C_Saitama.svg.png";
      } else if(element == "40") {
        _message = "白岡市	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/埼玉県白岡町町章.svg/200px-埼玉県白岡町町章.svg.png";
      } else if(element == "41") {
        _message = "伊奈町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/埼玉県伊奈町町章.svg/200px-埼玉県伊奈町町章.svg.png";
      } else if(element == "42") {
        _message = "三芳町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Miyoshi_Saitama_chapter.JPG/200px-Miyoshi_Saitama_chapter.JPG";
      } else if(element == "43") {
        _message = "毛呂山町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Moroyama_Saitama_chapter.JPG/200px-Moroyama_Saitama_chapter.JPG";
      } else if(element == "44") {
        _message = "越生町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Ogose_Saitama_chapter.JPG/200px-Ogose_Saitama_chapter.JPG";
      }  else if(element == "45") {
        _message = "滑川町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Namegawa_Saitama_chapter.JPG/200px-Namegawa_Saitama_chapter.JPG";
      } else if(element == "46") {
        _message = "嵐山町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/8/8c/Ranzan_Saitama_chapter.JPG";
      } else if(element == "47") {
        _message = "小川町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/2/20/Ogawa_Saitama_chapter.JPG";
      } else if(element == "48") {
        _message = "川島町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/0/0b/Kawajima_Saitama_chapter.JPG";
      //
      } else if(element == "49") {
        _message = "吉見町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Emblem_of_Yoshimi%2C_Saitama.svg/200px-Emblem_of_Yoshimi%2C_Saitama.svg.png";
      } else if(element == "50") {
        _message = "鳩山町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Emblem_of_Hatoyama%2C_Saitama.svg/200px-Emblem_of_Hatoyama%2C_Saitama.svg.png";
      } else if(element == "51") {
        _message = "ときがわ町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Tokigawa_Saitama_chapter.JPG/200px-Tokigawa_Saitama_chapter.JPG";
      //
      } else if(element == "52") {
        _message = "横瀬町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/2/22/Yokoze_Saitama_chapter.JPG";
        //
      } else if(element == "53") {
        _message = "皆野町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Emblem_of_Minano%2C_Saitama.svg/200px-Emblem_of_Minano%2C_Saitama.svg.png";
      } else if(element == "54") {
        _message = "長瀞町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Emblem_of_Nagatoro%2C_Saitama.svg/200px-Emblem_of_Nagatoro%2C_Saitama.svg.png";
      } else if(element == "55") {
        _message = "小鹿野町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Ogano_Saitama_chapter.JPG/200px-Ogano_Saitama_chapter.JPG";
      } else if(element == "56") {
        _message = "東秩父村";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Emblem_of_Higashichichibu%2C_Saitama.svg/200px-Emblem_of_Higashichichibu%2C_Saitama.svg.png";
      } else if(element == "57") {
        _message = "美里町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/0/0b/Misato_town_Saitama_chapter.JPG";
      } else if(element == "58") {
        _message = "神川町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Kamikawa_Saitama_chapter.JPG/200px-Kamikawa_Saitama_chapter.JPG";
      } else if(element == "59") {
        _message = "上里町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Emblem_of_Kamisato%2C_Saitama.svg/200px-Emblem_of_Kamisato%2C_Saitama.svg.png";
      } else if(element == "60") {
        _message = "寄居町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Yorii_Saitama_chapter.JPG/200px-Yorii_Saitama_chapter.JPG";
      } else if(element == "61") {
        _message = "宮代町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/3/37/Miyashiro_saitama_chapter.JPG";
      } else if(element == "62") {
        _message = "杉戸町	";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Sugito_Saitama_chapter.JPG/200px-Sugito_Saitama_chapter.JPG";
      } else if(element == "63") {
        _message = "松伏町";
        _url = "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Matsubushi_Saitama_chapter.JPG/200px-Matsubushi_Saitama_chapter.JPG";
      // } else if(element == "") {
      //   _message = "";
      //   _url = "";
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