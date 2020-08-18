import 'package:app_contador/widgets/image.dart';
import 'package:flutter/material.dart';

import 'container_screen.dart';

class ImageScreen extends StatefulWidget {
    ImageScreen({Key key}) : super(key: key);

    @override
    _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Imagen'),
            ),
            body: Column(
                children: [
                    MyImage(
                        imagen: NetworkImage('https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png'),
                    ),
                    MyImage(),
                    // Botones
                    // RaisedButton(
                    //     child: Text('Ir a Contenedor'),
                    //     onPressed: (){
                    //         Navigator.push(
                    //             context, 
                    //             MaterialPageRoute(builder: (context) => ContainerScreen())
                    //         );
                    //     }
                    // ),
                    RaisedButton(
                        child: Text('Ir atras'),
                        onPressed: (){
                            Navigator.pop(context, true);
                        }
                    )
                ],
            ),
        );
    }
}