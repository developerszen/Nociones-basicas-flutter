import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
    const MyCard({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Card(
            child: Container(
                width: 200,
                height: 150,
                child: Text('Soy una Card'),
                alignment: Alignment.center,
            ),
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),
        );
    }
}