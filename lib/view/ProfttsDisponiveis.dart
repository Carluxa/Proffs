import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:proffy/view/Disponiveis.dart';
import 'package:proffy/view/Favoritos.dart';
import 'package:proffy/view/FirstPage.dart';
import 'package:proffy/widgets/CardWidgets.dart';
import 'package:proffy/widgets/constantes.dart';



class ProfttsDisponiveis extends StatefulWidget {
  const ProfttsDisponiveis({Key key}) : super(key: key);

  @override
  _ProfttsDisponiveisState createState() => _ProfttsDisponiveisState();
}

class _ProfttsDisponiveisState extends State<ProfttsDisponiveis> {
  int _urrentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bakground,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Constants.primaryColors,
            leading:IconButton(
                      icon:Icon(Icons.arrow_back,color: Colors.grey,),
                      onPressed:(){Navigator.push(context,MaterialPageRoute<void>(builder: (BuildContext context) => FirstPage()),);},),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 40,top: 0,bottom: 0),
                  child: Center(child: Text("Proffys")),
                )],
          ),
      body: _urrentIndex==0?Disponiveis():Favoritos(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _urrentIndex,
        selectedItemColor: Constants.primaryColors,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items:[
           BottomNavigationBarItem (
            icon: Icon(Icons.style,),
            title: Text('Proffs',style: TextStyle(color: Colors.black),),),
             BottomNavigationBarItem(

            icon: Icon(Icons.favorite),
              title: Text('Favoritos',style: TextStyle(color: Colors.black),),)
        ],
          onTap: (index) {
          setState(() {
            _urrentIndex=index;
          });
        },
      ),

    );
  }


}
