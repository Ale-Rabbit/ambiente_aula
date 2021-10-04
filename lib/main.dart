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
Color greenButton = Color.fromRGBO(20, 134, 46, 1);
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
              _turma1(),
              _turma2()
              /*,_bottom()*/
            ],
          ),
        ),
      ),
    );
  }

  _header() {
    return Container(
        color: Colors.white,
        //height: MediaQuery.of(context).size.width, TODO: DEIXAR MENOR
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
      margin: EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_semestreText(), _semestreButton()],
      ),
    );
  }

  _semestreText() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Período: ',
            style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(66, 66, 66, 1),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  _semestreButton() {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
          )),
      child: FlatButton(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2021/2',
              style: TextStyle(color: Color.fromRGBO(66, 66, 66, 1)),
            ),
            Icon(MdiIcons.chevronDown, color: Colors.grey),
          ],
        ),
        shape: StadiumBorder(),
        onPressed: () {},
      ),
    );
  }

  _turma1() {
    return Container(
      margin: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: blueColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titulo_turma1(),
          _descricao_turma1(),
          // TODO: fazer círculo de % Icon(MdiIcons.creditCard),
          _cabecalho_turma()
        ],
      ),
    );
  }

  _titulo_turma1() {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Text('Desenvolvimento de Sistemas Móveis',
            style: TextStyle(color: Colors.white, fontFamily: 'Open Sans')));
  }

  _descricao_turma1() {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 25),
        child: Text(' Turma: 0658-A - 51N - Graduação',
            style: TextStyle(color: Colors.white, fontSize: 10)));
  }

  _cabecalho_turma() {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [/*(_icones(),*/ _botao_entrar_sala()],
      ),
    );
  }

  _turma2() {
    return Container(
      margin: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: greenColor, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titulo_turma2(),
          _descricao_turma2(),
          // TODO: fazer círculo de % Icon(MdiIcons.creditCard),
          _cabecalho_turma()
        ],
      ),
    );
  }

  _botao_entrar_sala() {
    return new Center(
      child: new Container(
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: FlatButton(
            color: greenButton,
            padding: EdgeInsets.all(20),
            child: Text(
              'Entrar na sala',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          )),
    );
  }

  _titulo_turma2() {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 20),
        child: Text('Fundamentos de Inteligência Artificial',
            style: TextStyle(color: Colors.white, fontFamily: 'Open Sans')));
  }

  _descricao_turma2() {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 10, bottom: 25),
        child: Text('Turma: 0388-A - 41N/42N - Graduação',
            style: TextStyle(color: Colors.white, fontSize: 10)));
  }

  _setStatusbarColor() {
    FlutterStatusbarcolor.setStatusBarColor(backgroundColor);
  }
}
