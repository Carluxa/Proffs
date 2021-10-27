import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proffy/widgets/constantes.dart';

class DarAulas extends StatelessWidget {
  const DarAulas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Constants.primaryColors,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10,right: 150,bottom: 10,top: 250),
              child:Text("Quer ser um Proffy?",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 35,color: Constants.textolors),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 10,bottom: 10,top: 10),
              child: Text("Para começar, voçê precisa\n se cadastrar como professor\n na nossa Plataforma web."
                  ,style: TextStyle(fontSize: 18,color: Color(0xFFdad9e3))),
            ),
            Spacer(),
            Center(
              child:SizedBox(
                  height: 50,
                  width: 300,
                  child:
                RaisedButton(
                  child: Text("Tudo Bem"),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    color: Constants.SecondColors,
                    onPressed: (){})
                ),
              ),
            SizedBox(height: 25,)
          ],
        ),

      ),
    );
  }
}
