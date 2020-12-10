import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.deepPurple,
      label: 'tamaño de imagen',
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
        title: Text('Bloquear Slider con checkbox'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider con pestillo'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://cronicasdekreisau.com/wp-content/uploads/Dragon-Chino-3.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
