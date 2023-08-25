import 'package:flutter/material.dart';
import 'package:task_list_app/config/Styles/styles.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset('assets/logo.png'),
            ),

            ListTile(      
              title: Text('Home', style: bentonSansMedium15(),),
              leading: Icon(Icons.home, color: colors.primary,),
              onTap: () {},
            ),
            ListTile(
              title: Text('Tareas Completadas', style: bentonSansMedium15(),),
              leading: Icon(Icons.task_alt, color: colors.primary,),
              onTap: () {},
            ),
            ListTile(
              title: Text('Papelera', style: bentonSansMedium15(),),
              leading: Icon(Icons.delete, color: colors.primary,),
              onTap: () {},
            ),

            Divider(
              color: colors.primary,
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),

            ListTile(
              title: Text('Configuración', style: bentonSansMedium15(),),
              leading: Icon(Icons.settings, color: colors.primary,),
              onTap: () {},
            ),
            
            ListTile(
              title: Text('Acerca de', style: bentonSansMedium15(),),
              leading: Icon(Icons.info, color: colors.primary,),
              onTap: () {},
            ),

            Text('Version Alpha 0.1.0', style: bentonSansRegular12(), textAlign: TextAlign.center,),

          ],
        )
      );
  }
}