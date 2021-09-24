import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart'
    show FlutterStatusbarcolor;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ambiente Aula',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

Color backgroundColor = Color.fromRGBO(236, 236, 236, 1);
Color blueColor = Color.fromRGBO(68, 177, 204, 1);
Color greenColor = Color.fromRGBO(5, 54, 30, 1);
Color textDark = Color.fromRGBO(52, 58, 64, 1);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    _setStatusbarColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
      ),
    );
  }

  _body() {
    return Container(
      color: backgroundColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _title(),
              _semestre(),
              /*_account(),
              _actions(),
              _myCards(),
              _info(),
              _divider(),
              _credictCard(),
              _divider(),
              _loanArea(),
              _divider(),
              _easynvest(),
              _divider(),
              _lifeInsurance(),
              _divider(),
              _discover()*/
            ],
          ),
        ),
      ),
    );
  }

  _header() {
    return Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _profile(), /*TODO: tentar colocar logo do aula _options()*/
              ],
            ),
          ],
        ));
  }

  _title() {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 5, top: 15),
      child: Text('Salas Virtuais',
          style: TextStyle(
              color: textDark, fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }

  _semestre() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _semestreText(),
          /*_easynvestInfo(),
          _easynvestButton(),*/
        ],
      ),
    );
  }

  _semestreText() {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Período',
            style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(66, 66, 66, 1),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  _profile() {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        child: Icon(MdiIcons.menu, color: Colors.black),
      ),
      onTap: () {},
    );
  }

  _setStatusbarColor() {
    FlutterStatusbarcolor.setStatusBarColor(backgroundColor);
  }
}
