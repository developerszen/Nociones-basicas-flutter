import 'package:app_contador/card_screen.dart';
import 'package:app_contador/container_screen.dart';
import 'package:app_contador/image_screen.dart';
import 'package:app_contador/widgets/list_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
    HomeScreen({Key key}) : super(key: key);

    @override
    _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('HomeScreen'),
            ),
            body: SafeArea(
                child: ListView(
                    children: [
                        MyListTile(
                            titulo: 'Widget Contenedor', 
                            onTap: (){
                                Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => ContainerScreen(texto: 'Dato nuevo envidao desde anterior pagina'))
                                );
                                // Navigator.pushNamed(context, '/ContainerScreen');
                            }
                        ),
                        MyListTile(
                            titulo: 'Widget Button', 
                            onTap: (){
                                // Navigator.push(
                                //     context, 
                                //     MaterialPageRoute(builder: (context) => ButtonScreen())
                                // );
                                // Navegacion con rutas nombradas
                                Navigator.pushNamed(context, '/ButtonScreen', arguments: Text('data from arguments'));
                            }
                        ),
                        MyListTile(
                            titulo: 'Widget Image', 
                            onTap: (){
                                Navigator.pushNamed(context, '/ImageScreen').then((res) => print(res));
                            }
                        ),
                        MyListTile(
                            titulo: 'Widget Card', 
                            onTap: (){
                                Navigator.push(
                                    context, 
                                    MaterialPageRoute(builder: (context) => CardScreen())
                                );
                            }
                        ),
                    ],
                )
            )
        );
    }
}