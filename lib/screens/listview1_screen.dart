import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  final options = const ['Megaman', 'Metal G', 'Super Mario', 'Final Fantasy'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('List view Tipo 1')
      ),
      body: ListView(
        children: [

          ...options.map(
              (e) => ListTile(
                title: Text(e),
                trailing: const Icon( Icons.arrow_forward_ios_rounded ),
              )
            ).toList()        
        ],
      )
    );
  }
}