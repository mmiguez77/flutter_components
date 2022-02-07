import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  const CustomCardType2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

      clipBehavior: Clip.antiAlias,
      elevation: 10,
      
      child: Column(
        children: [
            const FadeInImage(
              image: NetworkImage('https://ladefinicion.com/wp-content/uploads/2019/08/paisaje-natural.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
            ),

            Container(
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10),
              child: const Text('Quiero viajar'),
              alignment: AlignmentDirectional.centerEnd,
            
            )

        ],
      ),
    );
  }
}