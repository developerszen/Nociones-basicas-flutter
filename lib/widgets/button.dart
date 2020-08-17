import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
    const MyButton({
        Key key,
        @required this.text,
        @required this.icono,
        @required this.color,
        @required this.onTap
    }) : super(key: key);

    final Icon icono;
    final String text;
    final Color color;
    final Function onTap;

    @override
    Widget build(BuildContext context) {
        return RaisedButton(
            child: Container(
                width: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        icono,
                        SizedBox(width: 5),
                        Text(text),
                    ],
                ),
            ),
            textColor: Colors.white,
            splashColor: Colors.black,
            color: color,
            elevation: 10,
            onPressed: onTap,
            onLongPress: () {
                print('Me mantienes presionado');
            },
        );
    }
}