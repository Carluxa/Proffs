import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proffy/view/DarAulas.dart';
import 'package:proffy/view/ProfttsDisponiveis.dart';
import 'package:proffy/widgets/constantes.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColors,
       body: Padding(
         padding: const EdgeInsets.only(left: 30,right: 30,bottom: 0,top: 0),
         child: ListView(
           children: [
             Container(
               height: 400,
               width: 500,
               child: Image.asset('assets/images/firstPage.png'),
             ),
              ListTile(
                  title: Text('Seja bem-vindo.',style:TextStyle(fontSize: 28,color:Colors.white ),textAlign: TextAlign.start,),
                  subtitle: Text('O que deseja fazer?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white ),textAlign: TextAlign.left,),
                ),
            SizedBox(height: 30,),
            Row(
                      children: [
                            InkWell(
                              onTap: (){ Navigator.push(context, MaterialPageRoute<void>(builder: (_)=>ProfttsDisponiveis()));},
                              child: Card(color: Color(0xFF9871f5),
                                shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                  child: Container(height:180, width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                                        children: [
                                          Image.asset('assets/images/iconBook.png'),
                                          Spacer(),
                                          Text("Estudar",style: TextStyle(fontSize: 25,color: Colors.white))

                                        ]),
                                  )),),
                            ),
                            SizedBox(width: 15,),

                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute<void>(builder: (_)=>DarAulas()));},
                          child: Card(
                                   color: Color(0xFF04d361),
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                   child: Container(
                                       height:180, width: 150,


                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                                         child: Column(
                                           crossAxisAlignment:  CrossAxisAlignment.start,
                                           children: [
                                            Image.asset('assets/images/tvicon.png'),
                                             Spacer(),
                                             Text("Dar Aulas",style: TextStyle(fontSize: 25,color: Colors.white))
                                           ],),
                                       ) ),),
                        ),
                      ],
                    ),
                 SizedBox(height: 20,),
                 Text("Total de 245 conexoes",style: TextStyle(color: Colors.white ) ,),
                 Row(
                   children: [
                     Text("já realizadas",style: TextStyle(color: Colors.white),),
                     Icon(Icons.favorite,color: Colors.white,),
                   ],
             )
           ],
         ),
       ),
    );
  }
}
