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
            body: Column(
                children: [
                    Text('Container Screen'),
                    MyContainer(texto: 'null', colorFondo: Colors.amber),
                    // Botones
                    RaisedButton(
                        child: Text('Ir a imagen'),
                        onPressed: (){
                            Navigator.push(
                                context, 
                                MaterialPageRoute(builder: (context) => ImageScreen())
                            );
                        }
                    ),
                    RaisedButton(
                        child: Text('Ir Atras'),
                        onPressed: (){
                            Navigator.pop(context);
                        }
                    )
                ],
            )
        );
        
    }
}