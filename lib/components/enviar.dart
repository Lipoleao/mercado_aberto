import 'package:flutter/material.dart';

class Enviar extends StatefulWidget {
  const Enviar({Key? key}) : super(key: key);

  @override
  State<Enviar> createState() => _EnviarState();
}

class _EnviarState extends State<Enviar> {

  bool texto = true;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(

      onTap:() => (
        setState(() => 
          texto = !texto
        )
      ),
      child: Row(children: [
        const Icon(Icons.pin_drop_outlined,
        size: 22,
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Text(
          texto? "Enviar para:" : "Enviar para: Marcello Queiroz - Rua Jardim Paulista, 56",
          style: const TextStyle(fontSize: 15),
        )
      ],
      )
      );
  }
}