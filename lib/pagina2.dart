import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Itens {
  final String nome;
  final String imagem;

  Itens(this.nome, this.imagem);
}

class PaginaCine extends StatefulWidget {

  @override
  _PaginaCineState createState() => _PaginaCineState();
}

class _PaginaCineState extends State<PaginaCine> {

  final Itenss = <Itens>[
    Itens(
      "O Poderoso Chefão",
      "imagens/chefao.jpg",
    ),
    Itens(
      "Il Postino",
      "imagens/carteiro3.jpg",
    ),
    Itens(
      "Cine Paradiso",
      "imagens/paradiso.jpg",
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
                          'SoulCode Cinema',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'SoulCine Cult',
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
                      Icon(Icons.star, color: Colors.green),
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
              child: Text('Este projeto consistiu em criar uma págia Web onde continham diversos filmes da minha preferência com o objetivo de aperfeiçoar os estudos de CSS.'),
            ),
          ],
        ),
      ),
    );
  }
}

