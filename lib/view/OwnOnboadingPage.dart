import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proffy/view/OwnOnboadingPage2.dart';
import 'package:proffy/widgets/constantes.dart';


class OwnOnboadingPage1 extends StatefulWidget {
  const OwnOnboadingPage1({Key key}) : super(key: key);

  @override
  _OwnOnboadingPage1State createState() => _OwnOnboadingPage1State();
}

class _OwnOnboadingPage1State extends State<OwnOnboadingPage1> {
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
              color:  Constants.primaryColors ,
              child: Image.asset("assets/images/onboarding1.png"),
            ),
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text("01.",style: TextStyle(color:  Color(0xFFdad9e3),fontSize: 50),),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text("Encontre vários professores para ensinar você",style: TextStyle(color:  Constants.textallolors, fontSize: 30),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30,top: 80,bottom: 50,right: 30),
              child: Row(
                children: [
                  Expanded(child: Container(height: 10,width: 10,color: Constants.primaryColors,)),
                  SizedBox(width: 8,),
                  Expanded(child: Container(height: 10,width: 10,color: Colors.grey,)),
                  Spacer(flex: 30,),
                  IconButton(icon: Icon(Icons.arrow_right_alt_sharp,size: 50.0, color: Colors.grey ), onPressed: (){
                    Navigator.push(context, MaterialPageRoute<void>(builder: (_)=>OwnOnboadingPage2()));
                  })
                ],
              ),
            )

          ]
        ),
    );
  }
}
