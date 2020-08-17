import 'package:app_contador/image_screen.dart';
import 'package:app_contador/widgets/container.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
    ContainerScreen({Key key}) : super(key: key);

    @override
    _ContainerScreenState createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Contenedor'),
            ),
            body: ListView(
                children: [
                    MyContainer(texto: 'Contenedor 1', colorFondo: Colors.amber),
                    MyContainer(texto: 'Contenedor 2', colorFondo: Colors.cyan),
                    MyContainer(texto: 'Contenedor 3', colorFondo: Colors.green),
                    // Botones
                    // RaisedButton(
                    //     child: Text('Ir a imagen'),
                    //     onPressed: (){
                    //         Navigator.push(
                    //             context, 
                    //             MaterialPageRoute(builder: (context) => ImageScreen())
                    //         );
                    //     }
                    // ),
                    // RaisedButton(
                    //     child: Text('Ir Atras'),
                    //     onPressed: (){
                    //         Navigator.pop(context);
                    //     }
                    // )
                ],
            )
        );
        
    }
}