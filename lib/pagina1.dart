import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Itens {
  final String nome;
  final String imagem;

  Itens(this.nome, this.imagem);
}

class PaginaInical extends StatefulWidget {

  @override
  _PaginaInicalState createState() => _PaginaInicalState();
}

class _PaginaInicalState extends State<PaginaInical> {

  final Itenss = <Itens>[
    Itens(
      "Bela Vista",
      "imagens/bela_vista.jpg",
    ),
    Itens(
      "Bairro do Bexiga",
      "imagens/bexiga.JPG",
    ),
    Itens(
      "Avenida Paulista",
      "imagens/paulista.JPG",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        // appBar: AppBar(
        //   title: Text('Pontos Turísticos'),
        // ),
        body: Column(
          children: [
             CarouselSlider(
          items: Itenss.map((e) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    e.nome,
                    style: textStyles.headline5,
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    e.imagem,
                    width: 200,
                    height: 168,
                  ),
                 
                ],
              )).toList(),
          options: CarouselOptions(
            height: 215,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pontos turísticos',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Cidade de São Paulo - SP',
                          style: TextStyle(
                            fontSize: 16, 
                            color: Colors.grey,
                          ),
                          ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.green),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Text('Nível do projeto'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(onPressed: (){}, child: Column(
                      children: [
                        Icon(
                          Icons.call, color: Color(0xFF3F51B5),
                        ),
                        Text('Ligar'),
                      ],
                    ),
                  ),
                  ),
                  Expanded(
                    child: TextButton(onPressed: (){}, child: Column(
                      children: [
                        Icon(
                          Icons.location_on, color:Color(0xFF3F51B5),
                        ),
                        Text('Local'),
                      ],
                    ),
                  ),
                  ),
                  Expanded(
                    child: TextButton(onPressed: (){}, child: Column(
                      children: [
                        Icon(
                          Icons.share, color: Color(0xFF3F51B5),
                        ),
                        Text('Compartilhar'),
                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Este projeto consistiu em criar uma págia Web onde continham diversos lugares turísticos da minha cidade. Foram utilizadas tecnologias como HTML, CSS e JavaScript para o seu desenvolvimento.'),
            ),
          ],
        ),
      ),
    );
  }
}


// class Botao extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//        child: TextButton(
//         onPressed: (){}, 
//         child: Column(
//           children: [
//             Icon(
//                Icons.location_on, color: Colors.blue,       ),
//                 Text('Local'),
//                 ],
//              ),
//           ),
//     );
//   }
// }