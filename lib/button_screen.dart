import 'package:app_contador/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
    const ButtonScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

        final dataFromScreen = ModalRoute.of(context).settings.arguments;
        
        return Scaffold(
            appBar: AppBar(
                title: Text('Buttons'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        // Text(dataFromScreen),
                        dataFromScreen,
                        MyButton(
                            text: 'Botón 1', 
                            icono: Icon(Icons.ac_unit), 
                            color: Colors.amber, 
                            onTap: () => print('Soy boton 1')
                        ),
                        MyButton(
                            text: 'Botón 2', 
                            icono: Icon(Icons.access_alarm), 
                            color: Colors.purple, 
                            onTap: () => print('Soy boton 2')
                        ),
                        MyButton(
                            text: 'Botón 3', 
                            icono: Icon(Icons.accessible), 
                            color: Colors.deepOrange, 
                            onTap: () => print('Soy boton 3')
                        ),
                    ],
                ),
            ),
        );
    }
}