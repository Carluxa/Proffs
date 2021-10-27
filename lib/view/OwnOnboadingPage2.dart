import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proffy/view/FirstPage.dart';
import 'package:proffy/widgets/constantes.dart';


class OwnOnboadingPage2 extends StatefulWidget {
  const OwnOnboadingPage2({Key key}) : super(key: key);

  @override
  _OwnOnboadingPage2State createState() => _OwnOnboadingPage2State();
}

class _OwnOnboadingPage2State extends State<OwnOnboadingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bakground,
      body: Column(
          crossAxisAlignment:  CrossAxisAlignment.start,
          children:[
            Container(
              height: 350,
              width: 500,
              color:  Constants.SecondColors,
              child: Image.asset("assets/images/onboarding2.png"),
            ),
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("02.",style: TextStyle(color:  Color(0xFFdad9e3),fontSize: 50),),
            ),
            SizedBox(
              height: 20,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Encontre vários Professores para ensinar você",style: TextStyle(color: Constants.textallolors,fontSize: 30),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,top: 80,bottom: 50,right: 30),
              child: Row(
                children: [
                  Expanded(child: Container(height: 10,width: 10,color: Colors.grey,)),
                  SizedBox(width: 8,),
                  Expanded(child: Container(height: 10,width: 10,color: Constants.SecondColors,)),
                  Spacer(flex: 30,),
                  IconButton(icon: Icon(Icons.arrow_right_alt_sharp,size: 50.0, color: Colors.grey ), onPressed: (){
                    Navigator.push(context, MaterialPageRoute<void>(builder: (_)=>FirstPage()));
                  })
                ],
              ),
            )

          ]
      ),
    );
  }
}
