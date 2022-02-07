import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/models/models.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Flutter'),
      ),
      body: ListView.separated(

        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {

            // final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
            // Navigator.push(context, route);

            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);

          },
        ), 
        separatorBuilder: (_ , __ ) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length

      )
    );
  }
}