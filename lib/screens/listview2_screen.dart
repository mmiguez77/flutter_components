import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  const Listview2Screen({Key? key}) : super(key: key);
  
  final options = const ['Megaman', 'Metal G', 'Super Mario', 'Final Fantasy'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('List view Tipo 2'),
      ),
      body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text( options[index] ), 
            trailing: const Icon( Icons.arrow_forward_ios_rounded ),
            onTap: () {
              
            },
          ), 
          separatorBuilder: ( _, __ ) => const Divider(), 
      )
    );
  }
}