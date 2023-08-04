import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: ChangeColor(),
        ),
      ),
    );
  }
}

class ChangeColor extends StatefulWidget{
  const ChangeColor({super.key});

  @override
  ChangeColorState createState()=> ChangeColorState();
}

class ChangeColorState extends State<ChangeColor>{
  Color _color = Colors.deepPurpleAccent;

  void changeColor(Color color){
    setState(() {
      _color=color;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        title: Text('Cambia Color'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
            ColorPicker(pickerColor: _color, onColorChanged: changeColor)
        ],
      ),
    );
  }

}