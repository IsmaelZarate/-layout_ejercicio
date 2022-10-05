import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //image central
        Image(image: AssetImage('assets/lake.jpg')),

        Title(),

        //botones
        botones(), //extrai el widget

        //descripcion
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Lake Oeschinen lies at the foot the Bluemlisalp in the Bernese Alps.Situated 1,578 meters aboe sea ride from Kandersteg,followed by a halg-hour walk through pastures and pine forest,leads you to the summer.Activites enjoyed here include rowing,and riding the summer toboggan run.'),
        )
      ],
    ));
  }
}

//extrai el widget para que estuviera mejor la manera de trabajar y no estuviera todo junto en el body
class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            //  crossAxisAlignment: CrossAxisAligment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(
            child:
                Container(), //este lo que hace separar los widgets  que seria el icon a una orilla
          ),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class botones extends StatelessWidget {
  const botones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        // mainAxisAlignment: MainAxisAligment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.call, color: Colors.blue),
              Text(
                'Call',
                style: TextStyle(color: Colors.blue),
              ),
              Column(
                children: [
                  Icon(Icons.location_on, color: Colors.blue),
                  Text(
                    'Route',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
