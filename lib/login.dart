import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        
        title: Text('Contato WhatsApp'),
        actions: [
          IconButton(
            onPressed: () async {
              var phone = "+5511987196698";
              launch("tel://$phone");
              var whatsappUrl = "https://web.whatsapp.com//send?phone=$phone";
              await canLaunch(whatsappUrl)
                  ? launch(whatsappUrl)
                  : print("Erro!");
            },
            icon: Icon(Icons.call),
          )
        ],
      ),


      body: Container(   

        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40
        ),
        color: Colors.white,
        
          child: ListView(
            children: [
              SizedBox(
                width: 128,
                height: 128,
                // child: Image.asset('imagens/logo.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                  radius: 87,
                  backgroundColor: Colors.deepOrange,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('imagens/logo.jpg'),
                    radius: 80,
                  ),
                ),
        
              TextFormField(
                autofocus: true,
                 decoration:
            InputDecoration(border: 
            InputBorder.none,
            icon: Icon(Icons.person),
            hintText: 'Informe seu nome'),
                // autofocus: true,
                // keyboardType: TextInputType.emailAddress,
                // decoration: InputDecoration(
                //   labelText: 'E-mail',
                //   labelStyle: TextStyle(
                //     color: Colors.black38,
                //     fontWeight: FontWeight.w400,
                //     fontSize: 20,
                //   ),
                // ),
              ),

              SizedBox(
                height: 10,
              ),
              TextFormField(
                //  focusNode: myFocusNode,
             decoration:
             InputDecoration(border: 
             InputBorder.none,
             icon: Icon(Icons.mail),
             hintText: 'Informe seu email'),

                // keyboardType: TextInputType.number,
                // decoration: InputDecoration(
                //   labelText: 'Senha',
                //   labelStyle: TextStyle(
                //     color: Colors.black38,
                //     fontWeight: FontWeight.w400,
                //     fontSize: 20,
                //   ),
                // ),
              ),
              TextFormField(
              maxLines: 4,
             decoration:
             InputDecoration(border: 
             OutlineInputBorder(),
             icon: Icon(Icons.messenger),
             hintText: 'Escreva uma mensagem...'),
              ),
               SizedBox(
                height: 10,
              ),
              
              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text('Envie sua mensagem'),
                  onPressed: (){}
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Color(0xFFF58524),
                        Color(0xFFF92B7F),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton( 
                     onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                          Text('Linkedin', 
                          style: TextStyle(
                    
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                          ),
                          // Container(
                            // child: SizedBox(
                            //   child: Image.asset('imagens/logo.jpg'),
                            //   height: 28,
                            //   width: 28,
                            // ),
                          // ),
                          // Text('2'),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    
  }
}