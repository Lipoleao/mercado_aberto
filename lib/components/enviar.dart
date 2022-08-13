import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Enviar extends StatefulWidget {
  const Enviar({Key? key}) : super(key: key);

  @override
  State<Enviar> createState() => _EnviarState();
}

class _EnviarState extends State<Enviar> {

  bool texto = true;
  TextEditingController controller = TextEditingController();
  String CEP='';
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(

      onTap:() => (
        setState(() => 
          showDialog(context: context,
           builder: (BuildContext context){
            return CupertinoAlertDialog(
                title: Text("Digite seu CEP"),
                content: Card(
                  color: Colors.transparent,
                  elevation:0.0,
                  child:Column(children: [
                    TextField(
                controller: controller,  
                ),

                  ],)
                ),
                actions: [
                  CupertinoDialogAction(onPressed: (){

                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancelar")),
                  CupertinoDialogAction(onPressed: (){
                  CEP =controller.text;
                  setState(() {
                    
                  });    
                  Navigator.of(context).pop();
                  },
                  child: const Text("OK"))
               
                ],
                //elevation: 24.0,
                //backgroundColor: Colors.white,
                
              ); 

           })
        )
      ),
      child: Row(children: [
        const Icon(Icons.pin_drop_outlined,
        size: 22,
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Text( "Enviar para: $CEP" ,
          style: const TextStyle(fontSize: 15),
        )
      ],
      )
      );
  }
}