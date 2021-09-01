import 'package:curriculo/pagina2.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'pagina1.dart';
import 'pagina2.dart';

class HomeTab extends StatefulWidget {

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      
      length: 3,
      child: Scaffold(
        
        appBar: AppBar(
      
          title: Text('Meu curriculo', textAlign: TextAlign.center),

          bottom: TabBar(           
            tabs: [
              Tab(text: 'Home' ,icon: Icon(Icons.home)),
              Tab(text: 'Turismo' ,icon: Icon(Icons.cameraswitch_outlined)),
              Tab(text: 'SoulCine' ,icon: Icon(Icons.camera_roll_outlined )),
            ],
          ),
          
        ),
        
        body: TabBarView(
          
          children: [
            
            Login(),
            PaginaInical(),
            PaginaCine(),
          ],
          
          ),
          
      ),
    );
  }
}