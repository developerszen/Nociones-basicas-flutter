import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
    const MyListTile({
        Key key,
        @required this.titulo,
        @required this.onTap,
    }) : super(key: key);

    final String titulo;
    final Function onTap;

    @override
    Widget build(BuildContext context) {
        return ListTile(
            title: Text(titulo),
            subtitle: Text('Descripcion de mi dato'),
            leading: Icon(Icons.widgets),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: onTap,
            onLongPress: (){},
        );
    }
}