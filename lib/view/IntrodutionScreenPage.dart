import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:proffy/widgets/constantes.dart';
import 'package:proffy/view/FirstPage.dart';

class IntrodutionScreenPage extends StatelessWidget {

   final PageDecoration pageDecoration =PageDecoration(
     titleTextStyle: PageDecoration().titleTextStyle.copyWith(color: Color(0xFFdad9e3),fontSize: 50),
     bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Color(0xFF6a6180),fontSize: 30,),
     titlePadding: PageDecoration().titlePadding.copyWith(right: 250,left: 0,bottom: 30,top: 80),
     //footerPadding: EdgeInsets.symmetric(horizontal: 1000.0)
   );

  List<PageViewModel> getPages(){
    return[
      PageViewModel(
          image: Image.asset("assets/images/onboarding1.png",),
          title: "01.",
          body:"Encontre vários Professores para ensinar você",
          decoration: pageDecoration,
      ),
      PageViewModel(
        image: Image.asset(""),
        title: "02.",
        body:"Encontre vários Professores para ensinar você",
        decoration: pageDecoration,
      )
    ];
  }
   void _PageNext(BuildContext context){
     Navigator.pop(context);
     Navigator.push(context, MaterialPageRoute<void>(builder: (_)=>FirstPage()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
          nextColor: Colors.black,
          dotsDecorator: DotsDecorator(
              shape:RoundedRectangleBorder(),
              activeShape: RoundedRectangleBorder(),
              activeColor: Constants.primaryColors

          ),
           // globalBackgroundColor: Colors.white,
             pages: getPages(),
             done: Text('done',style: TextStyle(color: Constants.primaryColors),),
             onDone:   (){_PageNext(context);},
             next: Icon(Icons.arrow_right_alt_sharp, size: 50.0, color: Colors.grey ,),

    ));
  }

}
