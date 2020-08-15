import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
    MyContainer({
        Key key,
        @required this.texto,
        @required this.colorFondo
    }) : super(key: key);

    final String texto;
    final Color colorFondo;

    @override
    _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
    @override
    Widget build(BuildContext context) {
        return Container(
            child: Text(widget.texto),
            width: 300,
            height: 300,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            // color: Colors.green,
            decoration: BoxDecoration(
                color: widget.colorFondo,
                border: Border.all(
                    width: 5,
                    color: Colors.red
                ),
                borderRadius: BorderRadius.circular(50)
            ),
        );
    }
}