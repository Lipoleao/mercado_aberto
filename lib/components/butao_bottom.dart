import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButaoKiwi extends StatefulWidget {
  const ButaoKiwi({Key? key, required this.icone, required this.texto}) : super(key: key);

  final icone; final String texto;
  @override
  State<ButaoKiwi> createState() => _ButaoKiwiState();
}

class _ButaoKiwiState extends State<ButaoKiwi> {

bool selecionado = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => {
        setState(() => {
          selecionado = !selecionado


        })
      },
    child: Column(
      children: [
    Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4),
        spreadRadius: 0.5,
        blurRadius: 2,
        offset: Offset(0, 1.5), // changes position of shadow
      ),
    ],
      ),
      child: Icon(
        widget.icone,
        size: 25,
        color: selecionado? Colors.grey : Colors.blue,
      ),
    ),
    Text(widget.texto,
    style: TextStyle(
      fontSize: 10,
      color: selecionado? Colors.grey : Colors.blue,
      ),)
      ]
    )
    

    );
    
  }
}