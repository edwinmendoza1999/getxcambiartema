import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxcambiartema/providers/tema_provider.dart';

class InicioPage extends StatefulWidget {
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {

  final temaController = Get.put(TemaProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Hola mundo") ),body: Center(child: 
    Column(  mainAxisAlignment: MainAxisAlignment.center , children: <Widget>[

      RaisedButton(child: Text("Tema claro" ), onPressed: ()=> temaController.temaClaro() ),
      SizedBox(height: 10),
      RaisedButton(child: Text("Tema oscuro" ), onPressed: ()=> temaController.temaOscuro() ),
      SizedBox(height: 10),
      RaisedButton(child: Text("Tema personalizado" ), onPressed: ()=> temaController.temaPersonalizado()  ),
      


    ],)
    ) );
  }
}