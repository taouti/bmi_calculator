import 'package:flutter/material.dart';
import 'package:flutter_app1/constants/app_constants.dart';
import 'package:flutter_app1/widgets/left_bar.dart';
import 'package:flutter_app1/widgets/right_bar.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Height",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 32,
                            color: Colors.white.withOpacity(0.8),
                          )),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: _weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Weight",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 32,
                            color: Colors.white.withOpacity(0.8),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(20.0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                padding: EdgeInsets.all(10),
                color: accentHexColor,
                onPressed: () {
                  double _h;
                  double _w;
                  setState(() {
                    if (_heightController.text.isNotEmpty &&
                        _weightController.text.isNotEmpty) {
                      _h = double.parse(_heightController.text);
                      _w = double.parse(_weightController.text);
                      _bmiResult = _w / (_h * _h);
                      if (_bmiResult > 25) {
                        _textResult = "You\'re over weight";
                      } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                        _textResult = "You have normal weight";
                      } else {
                        _textResult = "You are under weight";
                      }
                    }
                  });
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: mainHexColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Text(
                _bmiResult.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 90,
                  color: accentHexColor,
                ),
              ),
            ),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Text(
                  _textResult,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: accentHexColor,
                  ),
                ),
              ),
            ),
            LeftBar(barWidth: [40, 80, 40], spacing: 20),
            RightBar(barWidth: [40, 80, 40], spacing: 20),
          ],
        ),
      ),
      backgroundColor: mainHexColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('BMI Calculator',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: accentHexColor,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.calculate, color: accentHexColor),
            ),
          ],
        ),
      ),
    );
  }
}
