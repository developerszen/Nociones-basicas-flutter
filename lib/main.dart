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
                // child: Column(
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        ListTile(
                            title: Text('data'),
                            subtitle: Text('Descripcion de mi dato'),
                            leading: Icon(Icons.account_circle),
                            trailing: Icon(Icons.dehaze),
                            onTap: (){
                                // Scaffold.of(context).showSnackBar(
                                //     SnackBar(
                                //         content: Text('Hola soy un snackbar'),
                                //     )
                                // );
                            },
                            onLongPress: (){},
                        ),
                        ListTile(
                            title: Text('data'),
                            subtitle: Text('Descripcion de mi dato'),
                            leading: Icon(Icons.account_circle),
                            trailing: Icon(Icons.dehaze),
                            onTap: (){},
                            onLongPress: (){},
                        ),
                        Text('Página Home'),
                        Text(
                            '$_contador',
                            style: TextStyle(
                                fontSize: 40
                            ),
                        ),
                        Container(
                            child: Text('Soy Widget Container'),
                            width: 300,
                            height: 300,
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(30),
                            alignment: Alignment.center,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 5,
                                    color: Colors.red
                                ),
                                borderRadius: BorderRadius.circular(50)
                            ),
                        ),
                        Container(
                            child: Text('Soy Widget Container'),
                            width: 300,
                            height: 300,
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(30),
                            alignment: Alignment.center,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 5,
                                    color: Colors.red
                                ),
                                borderRadius: BorderRadius.circular(50)
                            ),
                        ),
                        RaisedButton(
                            child: Container(
                                width: 100,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Icon(Icons.access_alarm),
                                        Text('Alarma'),
                                    ],
                                ),
                            ),
                            textColor: Colors.white,
                            splashColor: Colors.black,
                            color: Colors.green,
                            elevation: 10,
                            onPressed: (){
                                print('Me presionaste');
                            },
                            onLongPress: () {
                                print('Me mantienes presionado');
                            },
                        ),
                        Image(
                            image: NetworkImage('https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png'),
                            // image: AssetImage('assets/zen_logo.jpeg'),
                            width: 250,
                            height: 100,
                            fit: BoxFit.fill,
                            color: Colors.amber,
                        )

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
                        backgroundColor: Colors.amber[900],
                        onPressed: (){
                            setState(() {
                                _contador--;
                            });
                            print(_contador);
                        }
                    ),
                    SizedBox(width: 10),
                    FloatingActionButton(
                        child: Icon(Icons.exposure_zero),
                        backgroundColor: Colors.green,
                        onPressed: (){
                            setState(() {
                                _contador = 0;
                            });
                            print(_contador);
                        }
                    ),
                ],
            )
        );
    }
}
