import 'package:app_contador/button_screen.dart';
import 'package:app_contador/card_screen.dart';
import 'package:app_contador/container_screen.dart';
import 'package:app_contador/home_screen.dart';
import 'package:app_contador/image_screen.dart';
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
            // home: HomeScreen(),
            initialRoute: '/HomeScreen',
            routes: {
                '/HomeScreen'       : (BuildContext context) => HomeScreen(),
                '/ContainerScreen'  : (BuildContext context) => ContainerScreen(),
                '/ButtonScreen'     : (BuildContext context) => ButtonScreen(),
                '/ImageScreen'      : (BuildContext context) => ImageScreen(),
                '/CardScreen'       : (BuildContext context) => CardScreen(),
            },
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
    // final globalKey = GlobalKey<ScaffoldState>();
    final globalKey = GlobalKey<ScaffoldState>();

    @override
    Widget build(BuildContext context){
        return Scaffold(
            key: globalKey,
            appBar: AppBar(
                title: Text('Home'),
                actions: [
                    IconButton(
                        icon: Icon(Icons.search), 
                        onPressed: (){}
                    ),
                    IconButton(
                        icon: Icon(Icons.home), 
                        onPressed: (){}
                    ),
                ],
                leading: IconButton(
                    icon: Icon(Icons.rotate_90_degrees_ccw), 
                    onPressed: (){}
                ),
            ),
            body: Center(
                // child: Column(
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        // ListTile(
                        //     title: Text('data'),
                        //     subtitle: Text('Descripcion de mi dato'),
                        //     leading: Icon(Icons.account_circle),
                        //     trailing: Icon(Icons.dehaze),
                        //     onTap: (){
                        //         globalKey.currentState.showSnackBar(
                        //             new SnackBar(
                        //                 content: Text('Alerta de Snackbar'),
                        //                 duration: Duration(seconds: 4),
                        //                 action: SnackBarAction(
                        //                     label: 'OK', 
                        //                     onPressed: (){}
                        //                 ),
                        //             )
                        //         );
                        //     },
                        //     onLongPress: (){
                        //         showDialog(
                        //             context: context,
                        //             builder: (BuildContext context){
                        //                 return AlertDialog(
                        //                     title: Text('Alerta'),
                        //                     content: Text('¿Estas seguro de cerrar esta venta?'),
                        //                     actions: [
                        //                         FlatButton(
                        //                             child: Text('Si'),
                        //                             onPressed: (){}, 
                        //                         ),
                        //                         FlatButton(
                        //                             child: Text('No'),
                        //                             onPressed: (){}, 
                        //                         ),
                        //                     ],
                        //                 );
                        //             }
                        //         );
                        //         // showDialog(
                        //         //     context: context,
                        //         //     builder: (BuildContext context) {
                        //         //         return AlertDialog(
                        //         //             title: Text('Bienvenido'),
                        //         //             content: Text('¿Estas seguro de cerrar esta venta?'),
                        //         //             actions: <Widget>[
                        //         //                 FlatButton(onPressed: (){}, child: Text('Close'))
                        //         //             ],
                        //         //         );
                        //         //     }
                        //         // );

                        //     },
                        // ),
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
