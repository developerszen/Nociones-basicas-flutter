import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
    MyImage({
        Key key,
        this.imagen
    }) : super(key: key);

    final ImageProvider imagen;

    @override
    My_ImageState createState() => My_ImageState();
}

class My_ImageState extends State<MyImage> {
    @override
    Widget build(BuildContext context) {
        return Image(
            // image: NetworkImage('https://strattonapps.com/wp-content/uploads/2020/02/flutter-logo-5086DD11C5-seeklogo.com_.png'),
            image: widget.imagen != null ? widget.imagen : AssetImage('assets/zen_logo.jpeg'),
            width: 250,
            height: 100,
            fit: BoxFit.fill,
            // color: Colors.amber,
        );
    }
}