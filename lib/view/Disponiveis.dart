import 'package:flutter/material.dart';
import 'package:proffy/widgets/CardWidgets.dart';
import 'package:proffy/widgets/constantes.dart';

class Disponiveis extends StatefulWidget {
  Disponiveis({Key key}) : super(key: key);

  @override
  _DisponiveisState createState() => _DisponiveisState();
}

class _DisponiveisState extends State<Disponiveis> {
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: isvisible==false?250:430,
              width: isvisible==false?500:800,
              color: Constants.primaryColors,
              child:Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start ,
                  children: [
                    Text("Proffys \nDisponíveis",style: TextStyle(fontSize: 25,color: Colors.white),),
                    SizedBox(height: 25,),
                    Container(
                      child: TextField(
                        cursorColor: Constants.primaryColors,
                        readOnly: true,
                        decoration: InputDecoration(
                            hintText: "Filtrar por dia, hora e matérias",
                            hintStyle: TextStyle(color: Colors.white ),
                            prefixIcon: Icon(Icons.filter_alt_outlined,color: Color(0xFF04d361)),
                            suffixIcon: isvisible==true?Icon (Icons.keyboard_arrow_up,color: Colors.grey,):Icon (Icons.keyboard_arrow_down_rounded,color: Colors.grey,),
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF9871F5)),
                            )),
                        onTap: (){
                          setState(() {
                            isvisible=!isvisible;
                          });

                        },
                      ),
                    ),
                    Visibility(
                      visible: isvisible,
                      child: Column(
                        children: [
                          SizedBox(height: 25,),
                          materia(
                            label:"Matéria",
                            items:Constants.suggestCargoList.map(
                                  (String value){
                                return DropdownMenuItem<String>(
                                    value:value,
                                    child: Text(value)
                                );
                              }).toList(),),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(flex:2,child:
                              materia(
                                  label:"Dia da semana",
                                  items: Constants.suggestCargoList.map(
                                          (String value){
                                        return DropdownMenuItem<String>(
                                            value:value,
                                            child: Text(value)
                                        );
                                      }).toList(), )),
                              SizedBox(width: 10,),
                              Expanded(child: materia(
                                  label:"Horário",
                                   items: Constants.suggestCargoList.map(
                                           (String value){
                                         return DropdownMenuItem<String>(
                                             value:value,
                                             child: Text(value)
                                         );
                                       }).toList(), ))
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ) ,),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: isvisible==false?200:380),
          child: Container(
            child: ListView(
              //physics: NeverScrollableScrollPhysics(),
                children:[
                  Container(color: Colors.transparent,child: Column(
                    children: [
                      ardwigets(
                          nameProff: "Diego Fernandes",
                           subject: "Química",
                            conteudo: "Entusiasta das melhores tecnologias de quimica avancada.\n\nApaixonado por explodir coisas em laboratório e por mudar a vida das pessoas através de experiencias.Mais de 200.000 pessoas já passaram por uma das minhas explosoes.",
                           preco: 'R20.00',
                          nameImage:"assets/images/Diego.png",
                      ),
                      SizedBox(height: 10,),
                      ardwigets(
                        nameProff: "Mayk Brito",
                        subject: "Educação Física",
                        conteudo: "Instrutor de Educação Física para\n iniciantes, minha missão de vida é levarsaúde e contribuir para o\n crescimento de quem se interessar.\n\n Comecei a minha jornada profissional\n em 2001, quando meu pai me deu dois\n alteres de 32kg com a seguinte condição:'\nAprenda a fazer dinheiro com isso!",
                        preco:"R60.00",
                        nameImage: "assets/images/Mayk.png",
                      ),
                    ],
                  ),),
                ]
            ),
          ),
        )
      ],
    );
  }

  Widget materia({String label,List<DropdownMenuItem<String>> items}){
    return
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Constants.textolors,
                  ),),
                  SizedBox(height: 5,)]),
            Container(
              decoration: BoxDecoration(
                color: Constants.textolors,
                border: Border.all(color: Constants.IColors,width: 0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(left: 10.0),
              child:
              DropdownButton<String>(
                hint: Text("Selecione",style: TextStyle(color: Constants.IColors),),
                dropdownColor: Colors.green[50],
                elevation: 5,
                icon:  Icon(Icons.arrow_drop_down_sharp,color: Constants.IColors,),
                iconSize: 25.0,
                underline: SizedBox(),
                isExpanded: true,
                items: items,
                onChanged :(value){}
              ),
            ),
            SizedBox(height: 5,),
          ]
      );

  }
}
