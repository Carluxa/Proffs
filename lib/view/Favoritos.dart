
import 'package:flutter/material.dart';
import 'package:proffy/widgets/CardWidgets.dart';
import 'package:proffy/widgets/constantes.dart';



class Favoritos extends StatefulWidget {
  const Favoritos({Key key}) : super(key: key);

  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  int _urrentIndex=0;


  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 500,
                color: Constants.primaryColors,
                child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.start ,
                    children: [
                      Text("Meus Proffys \nFavoritos",style: TextStyle(fontSize: 25,color: Colors.white),),
                      SizedBox(height: 25,),
                    ],
                  ),
                ) ,),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Container(
              child: ListView(
                //physics: NeverScrollableScrollPhysics(),
                  children:[
                    Container(color: Colors.transparent,child: Column(
                      children: [
                        ardwigets(
                          nameProff: "Tiago Luchtenberg",
                          subject: "Geografia",
                          conteudo: "As vezes não sei nem onde eu tô, mas \nconsigo me localizar facilmente em \nqualquer lugar. Tenho memória \nfotográfica e nunca fico perdido.\n\nEu ensino a galera como não se perder \nna vida, com lições geográficas simples \npra você nunca mais precisar de mapa \nna sua bela vida.",
                          preco:"R60.00",
                          nameImage: "assets/images/Euzasso.png",
                          favoritos: true,
                        ),
                        SizedBox(height: 10,),
                      //  ardwigets(),
                      ],
                    ),),
                  ]
              ),
            ),
          )
        ],

    );
  }
}
