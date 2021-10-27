import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:proffy/widgets/constantes.dart';
class ardwigets extends StatelessWidget {
  String nameProff, subject, conteudo, preco, nameImage;
  bool favoritos;
  ardwigets({Key key,this.nameProff, this.subject,this.conteudo, this.preco, this.nameImage,this.favoritos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 0, bottom: 0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:24.0,horizontal: 0.0),
              child: ListTile(
                leading:   CircleAvatar(radius: 40,child: ClipRRect(child: Image.asset(nameImage,),borderRadius: BorderRadius.circular(30),)),
                title: Text
                  ( nameProff,style: TextStyle( fontWeight: FontWeight.bold,fontSize:20,color: Constants.nameolors),),
                subtitle: Text(subject),
              ),
            ),
            //SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(top:12.0,left: 24.0, right: 25.0,),
              child: Text(conteudo,
                textAlign: TextAlign.left,
                style:
                TextStyle(color: Constants.textallolors,fontSize: 16),),
            ),
            SizedBox(height: 5,),
            Container(
              height: 130,
              width: 500,
              color: Color(0xFFFAFAFC),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding:EdgeInsets.symmetric(horizontal: 10.0),child: Text('Preco/hora',style: TextStyle(fontSize: 14,color: Constants.textallolors ),)),
                        SizedBox(width: 5,),
                        Text(preco,style: TextStyle(color: Constants.SecondColors,fontSize: 16 ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 60,width: 70,child:
                            Card(
                                shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: favoritos==true?Colors.red:Constants.primaryColors,
                                child: IconButton(icon: Icon(favoritos==true?MdiIcons.heartMinus:Icons.favorite_border,color: Colors.white,),)),),
                            SizedBox(width: 5,),
                            Container(
                              height: 60,
                              width: 275,
                              child: Card(
                                color: Constants.SecondColors,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: ListTile(
                                  leading: Icon(MdiIcons.whatsapp,color: Colors.white,),
                                  minVerticalPadding: 1,
                                  title: Text("Entrar em Contacto",style: TextStyle(color: Colors.white,fontSize: 14),),
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
