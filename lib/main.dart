import 'package:flutter/material.dart';

void main(){
    runApp(MyApp());
}
// Stateless Widget
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            title: 'Aplicación Contador',
            debugShowCheckedModeBanner: false,
            home: HomePage(),
        );
    }
}

// Statefull Widget
// Pagina de Home
class HomePage extends StatefulWidget {
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

    int _contador = 0;

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Home'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('Página Home'),
                        Text(
                            '$_contador',
                            style: TextStyle(
                                fontSize: 40
                            ),
                        ),
                    ],
                )
            ),
            floatingActionButton: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    FloatingActionButton(
                        child: Icon(Icons.arrow_upward),
                        onPressed: (){
                            setState(() {
                                _contador++;
                            });
                            print(_contador);
                        }
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                        child: Icon(Icons.arrow_downward),
                        onPressed: (){
                            setState(() {
                                _contador++;
                            });
                            print(_contador);
                        }
                    ),
                ],
            )
        );
    }
}
